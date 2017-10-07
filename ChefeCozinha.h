//
// Created by Asaf Santana on 19/09/2017.
//

#ifndef COZINHASISTEMASOPERACIONAIS_CHEFECOZINHA_H
#define COZINHASISTEMASOPERACIONAIS_CHEFECOZINHA_H

#include <iostream>
#include <unistd.h>
#include <string>
#include <cstring>


using namespace std;

class ChefeCozinha {

private:
    int INDEX;
    pid_t pid;
    int fd[2];

    char pedido[256];
    char endereco[256];


public:
    ChefeCozinha(int index) {

        FILE *arquivo;
        this->INDEX = index;

        pipe(fd);
        pid = fork();
        if (pid < 0) {
            cerr << "Erro no duplicar do processo" << endl;

        } else if (pid == 0) {
            pid = getpid();


            while (true) {
                memset(pedido, 0, 256);
                close(fd[1]);

                while (read(fd[0], pedido, sizeof(pedido))) {

                    sprintf(endereco, "ChefeCozinha_%0d.txt", getINDEX());
                    arquivo = fopen(endereco, "a");

                    fprintf(arquivo, "     - %s \r\n", pedido);
                    fclose(arquivo);
                    memset(pedido, 0, 256);
                    close(fd[1]);
                }

            }
        }
    }


    int getINDEX() {
        return this->INDEX;
    }


    void enviarPedido(string pedido) {
        close(fd[0]);
        write(fd[1], pedido.c_str(), pedido.size());
    }


    virtual ~ChefeCozinha() {

    }


};

#endif //COZINHASISTEMASOPERACIONAIS_CHEFECOZINHA_H
