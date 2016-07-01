/*
 * monitor.cpp
 *
 *  Created on: May 27, 2016
 *      Author: david
 */

#include <time.h>
#include "monitor.h"

typedef struct __attribute__((__packed__)) output {
    uint32_t pos;
    uint32_t run_id;
    uint32_t pid;
    uint32_t output;
    uint32_t timems;
} output_t;

void sleep_ms(int milliseconds) {
    struct timespec ts;
    ts.tv_sec = milliseconds / 1000;
    ts.tv_nsec = (milliseconds % 1000) * 1000000;
    nanosleep(&ts, NULL);
}

volatile output_t *outputs;
extern vector<pidPair> pidsPair;

void initShareMem() {
    int shmid;
    key_t key;
    char *shm, *s;

    key = 6000;
    if ((shmid = shmget(key, SHMSZ, IPC_CREAT | 0666)) < 0) {
        perror("shmget");
        exit(1);
    }
    if ((shm = (char*) shmat(shmid, NULL, 0)) == (char *) -1) {
        perror("shmat");
        exit(1);
    }
    // Clear out memory
    printf(">Clear out memory\n");
    s = shm;
    for (char i = 0; i < SHMSZ; i++) {
        *(s + i) = 0;
    }
    outputs = (output_t*) shm;
}

int waitForPid(pid_t pid, int pos) {
    int i;
    for (i = 0; i < 3; i++) {
        if ((pid_t)outputs[i].pid == pid){
            printf("Pid %d arrived to checkpoint at %ld\n", pid,
                   time(0));
            pidsPair[i].analized = true;
            return 1;
        }
    }
    int status;
    if (-1 == waitpid(pid, &status, 0)){
        if (!WIFEXITED(status) || WEXITSTATUS(status) != 0) {
            printf("Pid %d crashed at %ld!\n", pid, time(0));
        }
        else {
            printf("Pid %d end successfully at %ld\n", pid, time(0));
        }
        pidsPair[i].analized = true;
        return 1;
    }
    return 0;
}
void monitor_thread() {
    initShareMem();
    printf(">Waiting for process to arrive in checkpoint\n");
    long five_seconds = 5 * CLOCKS_PER_SEC;
    clock_t start_time = clock();
    clock_t current_time = 0;
    unsigned int infos = 0;
    bool first_arrived = false;

    do {
        for (unsigned int i = 0; i < pidsPair.size(); i++){
            if (!pidsPair[i].analized) {
                infos += waitForPid(pidsPair[i].pid, i);
                if (!first_arrived && infos > 0){
                    printf("first arrived!\n");
                    first_arrived = true;
                }
            }
        }
        current_time = clock();
    }while((current_time - start_time) < five_seconds ||
           infos < 3);

    /*** Analyze stuff ***/
    float chanceOffAttack = 0;
    int processRunning = 0;
    // Check if all process were running
    for(int i=0;i<3;i++) {
        if(outputs[i].pid != 0){
            processRunning++;
        }
        printf("********%d********\n", i);
        printf("%d, %d, %d, %d, %d\n",
        outputs[i].run_id,
        outputs[i].pid,
        outputs[i].output,
        outputs[i].timems,
        outputs[i].pos);
        printf("*****************\n");
    }
    if(processRunning == 1 || processRunning == 2) {
        chanceOffAttack = 100;
    }
    else if(processRunning == 0){
        chanceOffAttack = 50;
    }
    else if(processRunning == 3){
        chanceOffAttack = 0;
    }
    printf(">Exiting\n");
}
