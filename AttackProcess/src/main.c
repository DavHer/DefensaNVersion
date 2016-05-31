#include <stdio.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>
#include <inttypes.h>
#include <time.h>

#define SHMSZ     	60
#define SHMKEY		6000

int shmid;
char *shm;

#define BUFFER_SIZE 50


typedef struct __attribute__((__packed__)) output {
	uint32_t pos;
	uint32_t run_id;
	uint32_t pid;
	uint32_t output;
	uint32_t timems;
}output_t;

void initShareMem() {
	printf("	shmget\n");
	if ((shmid = shmget(SHMKEY, SHMSZ, 0666)) < 0) {
		perror("	shmget");
		exit(1);
	}
	printf("	shmat\n");
	if ((shm = shmat(shmid, NULL, 0)) == (char *) -1) {
		perror("	shmat");
		exit(1);
	}
}

void writeShareMem(output_t *output) {
	output_t *outputs = (output_t*)shm;
	printf("	Writing to share memory\n");
	// Go to the position where I should write
	output->timems = time(NULL);
	outputs[output->pos] = *output;
}

int bufferOverflow(char *payload, output_t *o) {

	//initShareMem();
	char buffer[BUFFER_SIZE];
	int ret = sprintf(buffer, "%s", payload);
	printf("%s\n", buffer);
	//writeShareMem(o);
	return ret;
}

int main(int argc, char *argv[]) {

	if (argc < 6) {
		printf("Uso: ejecutablen <tipo> <run_id> <pid> <pos> <payload>\n");
		return 0;
	}
	int tipo = atoi(argv[1]);
	output_t o;
	o.pid = atoi(argv[3]);
	o.run_id = atoi(argv[2]);
	o.pos = atoi(argv[4]);
	char * buff = (char*)malloc(100 *sizeof(char));
	scanf("%s",buff);
	printf("%d %d %d\n", o.pid, o.run_id, o.pos);
	switch (tipo) {
	case 1:
		printf("Ataque de buffer overflow\n");
		bufferOverflow(buff, &o);
		break;
	case 2:
		printf("Ataque de ROP\n");
		break;

	default:
		printf("Tipo incorrecto\n");
	}

	return 0;
}
