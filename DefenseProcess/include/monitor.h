/*
 * monitor.h
 *
 *  Created on: May 27, 2016
 *      Author: david
 */

#ifndef INCLUDE_MONITOR_H_
#define INCLUDE_MONITOR_H_

#include <stdlib.h>
#include <stdio.h>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <vector>
#include <sys/wait.h>
#include <unistd.h>
#include <thread>
#include <fstream>

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>

#define SHMSZ		60

void monitor_thread();



#endif /* INCLUDE_MONITOR_H_ */
