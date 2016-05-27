//============================================================================
// Name        : DefensaDiversidad.cpp
// Author      : David Herdoiza
// Version     :
// Copyright   : 
// Description : Hello World in C, Ansi-style
//============================================================================

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

#include "monitor.h"

#define SHMSZ		30
#define MAX_PAYLOAD 1000
#define EJECUTABLES	"ejecutables.txt"

using namespace std;

typedef struct unidadAtaque {
	int tipoEntrada;
	char payload[MAX_PAYLOAD];
	bool esAtaque;
} unidadAtaque_t;

vector<unidadAtaque_t> unidadesAtaque;
vector<string> ejecutables;

void leerEjectuables() {
	string in = EJECUTABLES;
	ifstream inputFile(EJECUTABLES);
	if (inputFile) {
		string value;
		while (inputFile >> value) {
			cout << "ejecutable: " << value << endl;
			ejecutables.push_back(value);
		}
	}
}
void leerUnidades() {
	unidadAtaque_t unidad;
	int esAta;
	while (scanf("%d %d %s", &(unidad.tipoEntrada), &(esAta), unidad.payload)
			> 0) {

		unidad.esAtaque = esAta ? true : false;
		printf("%d %d %s\n", unidad.tipoEntrada, unidad.esAtaque,
				unidad.payload);
		unidadesAtaque.push_back(unidad);
	}
}

pid_t spawProcess(string ejecutable, unidadAtaque_t unidadAtaque) {
	pid_t pid = fork(); // create child process
	//int status;
	// Error en fork()
	if (pid == -1) {
		cout << "Error forking\n";
	} else if (pid == 0) {
		cout << "Child process\n";
		char entradaBuff[5];
		sprintf(entradaBuff, "%d", unidadAtaque.tipoEntrada);
		execl(ejecutable.c_str(), ejecutable.c_str(), entradaBuff,
				unidadAtaque.payload, NULL); // run the command
		perror("execl"); // execl doesn't return unless there is a problem
		exit(1);
	} /*else {
	 cout << "Parent process\n";
	 while (-1 == waitpid(pid, &status, 0))
	 ; // wait for child to complete
	 if (!WIFEXITED(status) || WEXITSTATUS(status) != 0) {
	 // handle error
	 std::cerr << "process " << argv[1] << " (pid=" << pid << ") failed"
	 << std::endl;
	 }
	 }*/
	return pid;
}

typedef struct pidPair {
	pid_t pid;
	string ejectuable;
} pidPair_t;

void receptor_thread() {
	leerUnidades();
	leerEjectuables();
	vector<pidPair> pidsPair;
	int status;

	for (int i = 0; i < (int) unidadesAtaque.size(); i++) {
		for (int j = 0; j < (int) ejecutables.size(); j++) {
			pidPair_t pidPair;
			pidPair.pid = spawProcess(ejecutables[j], unidadesAtaque[i]);
			pidPair.ejectuable = ejecutables[j];
			pidsPair.push_back(pidPair);
			cout << "Pair pushed back: " << pidPair.pid << " "
					<< pidPair.ejectuable << endl;
		}

		//TODO: wait for the current process to finish before spaw more process
		cout << "Waiting for processes" << endl;
		while (pidsPair.size() > 0) {
			for (int k = 0; k < (int) pidsPair.size(); k++) {
				if (-1 == waitpid(pidsPair[k].pid, &status, 0)) {
					// PID se termino
					if (!WIFEXITED(status) || WEXITSTATUS(status) != 0) {
						// handle error
						std::cerr << "process " << pidsPair[k].ejectuable
								<< " (pid=" << pidsPair[k].pid << ") failed"
								<< std::endl;
					} else {
						std::cout << "process " << pidsPair[k].ejectuable
								<< " (pid=" << pidsPair[k].pid
								<< ") end successfully" << std::endl;
					}
					pidsPair.erase(pidsPair.begin() + k);
				}
			}
		}
		cout << "Out of Pids\n";
	}

}



int main(int argc, char *argv[]) {
	thread t1(receptor_thread);

	thread t2(monitor_thread);

	t1.join();
	t2.join();
	return 0;
}
