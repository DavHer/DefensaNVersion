/*
 * monitor.cpp
 *
 *  Created on: May 27, 2016
 *      Author: david
 */

#include "monitor.h"

void monitor_thread() {
	char c;
	int shmid;
	key_t key;
	char *shm, *s;

	/*
	 * We'll name our shared memory segment
	 * "5678".
	 */
	key = 5678;

	/*
	 * Create the segment.
	 */
	if ((shmid = shmget(key, SHMSZ, IPC_CREAT | 0666)) < 0) {
		perror("shmget");
		exit(1);
	}

	/*
	 * Now we attach the segment to our data space.
	 */
	if ((shm = (char*)shmat(shmid, NULL, 0)) == (char *) -1) {
		perror("shmat");
		exit(1);
	}

	/*
	 * Now put some things into the memory for the
	 * other process to read.
	 */
	s = shm;

	printf(">Writting to share memory\n");
	for (c = 'a'; c <= 'z'; c++)
		*s++ = c;
	*s = '\0';

	/*
	 * Finally, we wait until the other process
	 * changes the first character of our memory
	 * to '*', indicating that it has read what
	 * we put there.
	 */

	printf(">Waiting for * in to share memory\n");
	while (*shm != '*')
		sleep(1);


	printf(">Exiting\n");
}
