#include <stdio.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>
#include <stdio.h>

#define SHMSZ     27

#define BUFFER_SIZE 100

void writeShareMem() {
	int shmid;
	key_t key;
	char *shm, *s;

	/*
	 * We need to get the segment named
	 * "5678", created by the server.
	 */
	key = 5678;

	/*
	 * Locate the segment.
	 */

	printf("	shmget\n");
	if ((shmid = shmget(key, SHMSZ, 0666)) < 0) {
		perror("	shmget");
		exit(1);
	}

	/*
	 * Now we attach the segment to our data space.
	 */
	printf("	shmat\n");
	if ((shm = shmat(shmid, NULL, 0)) == (char *) -1) {
		perror("	shmat");
		exit(1);
	}

	/*
	 * Now read what the server put in the memory.
	 */
	printf("	Reading from share memory\n");
	s = shm;
	while(*s == '\0') {
		printf("	Share memory empty\n");
	}
	printf("	");
	for (s = shm; *s != '\0'; s++)
		printf("%c",*s);
	printf("\n");

	/*
	 * Finally, change the first character of the
	 * segment to '*', indicating we have read
	 * the segment.
	 */
	printf("	Writting to share memory\n");
	*shm = '*';

}

int bufferOverflow(char *payload) {

	char buffer[BUFFER_SIZE];
	int ret = sprintf(buffer, "%s", payload);
	printf("%s\n", buffer);
	writeShareMem();
	return ret;
}

int main(int argc, char *argv[]) {

	if (argc < 3) {
		printf("Uso: ejecutablen <tipo> <payload>\n");
		return 0;
	}
	int tipo = atoi(argv[1]);
	switch (tipo) {
	case 1:
		printf("Ataque de buffer overflow\n");
		bufferOverflow(argv[2]);
		break;
	case 2:
		printf("Ataque de ROP\n");
		break;

	default:
		printf("Tipo incorrecto\n");
	}

	return 0;
}
