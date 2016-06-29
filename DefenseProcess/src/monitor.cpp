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

void monitor_thread() {
    initShareMem();
    printf(">Waiting for process to arrive in checkpoint\n");
    long five_seconds = 5 * CLOCKS_PER_SEC;
    clock_t start_time = clock();
    clock_t current_time = 0;

    do {
        if (outputs[0].pid != 0 || outputs[1].pid != 0 || outputs[2].pid != 0) {
            printf("One arrived, wait 100ms for the others\n");
            sleep_ms(100);
            break;
        }
        current_time = clock();
    }while((current_time - start_time) < five_seconds);

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
