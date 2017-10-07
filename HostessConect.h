//
// Created by Asaf Santana on 21/09/2017.
//

#ifndef COZINHASISTEMASOPERACIONAIS_HOSTESSCONECT_H
#define COZINHASISTEMASOPERACIONAIS_HOSTESSCONECT_H

#include <iostream>
#include <string>
#include <queue>
#include <map>
#include <sstream>
#include <fstream>
#include "../Model/Mesa.h"
#include "../Model/ChefeCozinha.h"

using namespace std;

class HostessConect {

private:

    queue<int> cozinheirosDisponiveis;

    queue<int> mesasNaoAtendidas;

    map<int, Mesa> mesasDisponiveis;


public:
    HostessConect(int mesas, int chefes) {


        for (int i = 1; i <= chefes; ++i) {
            criarArquivoDosChefes(i);
            cozinheirosDisponiveis.push(i);

        }


        for (int i = 1; i <= mesas; ++i) {
            Mesa mesa(i);
            mesasDisponiveis.emplace(i, mesa);
        }

    }
/**
 * Manipula as estruturas de dados
 * @param numeroDaMesa
 * @param pedido
 */
    void fazendoPedido(int numeroDaMesa, string pedido) {
        if (pedido != "fim") { // confiro se a mesa quer fechar o pedido
            if (mesasDisponiveis.at(numeroDaMesa).getEsperando()) {
                // confiro se a mesa esta esperando

                if (!cozinheirosDisponiveis.empty()) {//aki confiro se a fila de cozinheiros esta disponivel

                    mesasDisponiveis.at(numeroDaMesa).selecionandoCuzinheiro(cozinheirosDisponiveis.front());
                    //crio um coinheiro para a mesa com a classe selecionando Cozinheiro

                    mesasDisponiveis.at(numeroDaMesa).prepararPedido(pedido);
                    // preparo o pedido que a mesa fez

                    cozinheirosDisponiveis.pop();
                    // retiro um numero da fila

                } else { // caso nao esteja disponivel

                    if (!mesasDisponiveis.at(numeroDaMesa).pedidosEmEspera()) {

                        mesasNaoAtendidas.push(numeroDaMesa);
                        //passo a mesa para a fila de mesas que estao esperando por chefes

                    }
                    mesasDisponiveis.at(numeroDaMesa).addNaListaDeEspera(pedido);
                    // adiciono o pedido na fila de pedidos nao atendidos na mesa
                }

            } else { // se a mesa nao estiver esperando, escreve o pedido
                mesasDisponiveis.at(numeroDaMesa).prepararPedido(pedido);
            }

        } else if (!mesasDisponiveis.at(numeroDaMesa).getEsperando()) {
            // se for igual a fim e tiver cozinheiro


            if (!mesasNaoAtendidas.empty()) { // pergunto se existe alguma mesa que esta em espera, se sim
                // a mesa recebe um novo chefe de cozinha


                int aux = mesasDisponiveis.at(numeroDaMesa).numeroDoChefe();

                mesasDisponiveis.at(numeroDaMesa).liberarChefe();

                mesasDisponiveis.at(mesasNaoAtendidas.front()).selecionandoCuzinheiro(aux);
                // preparo os pedidos em espera





                if (mesasDisponiveis.at(mesasNaoAtendidas.front()).getPediuFim() == true) {
                    // caso ele tenha pedido fim antes de ter chefe, ele ganha o chefe e depois perde
                    cozinheirosDisponiveis.push(mesasDisponiveis.at(mesasNaoAtendidas.front()).numeroDoChefe());

                    mesasDisponiveis.at(mesasNaoAtendidas.front()).liberarChefe();

                    mesasDisponiveis.at(mesasNaoAtendidas.front()).setPediuFim(false);
                }
                mesasNaoAtendidas.pop();
                // retiro a mesa da fila de espera

            } else { // mato o processo do chefe e coloco seu index na fila de chefes disponiveis
                cozinheirosDisponiveis.push(mesasDisponiveis.at(numeroDaMesa).numeroDoChefe());
                mesasDisponiveis.at(numeroDaMesa).liberarChefe();
            }

        } else {
            mesasDisponiveis.at(numeroDaMesa).setPediuFim(true);
        }
    }

private:

/**
* inicia os arquivos, se existir outro arquivo com o mesmo nome ele zera --wt--
*/
    void criarArquivoDosChefes(int indexDoschefes) {
        char buff[10240];
        sprintf(buff, "ChefeCozinha_%0d.txt", indexDoschefes);

        FILE *arquivo;
        arquivo = fopen(buff, "wt");
        fclose(arquivo);

    }


};


#endif //COZINHASISTEMASOPERACIONAIS_HOSTESSCONECT_H
