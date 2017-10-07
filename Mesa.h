//
// Created by Asaf Santana on 19/09/2017.
//

#ifndef COZINHASISTEMASOPERACIONAIS_MESA_H
#define COZINHASISTEMASOPERACIONAIS_MESA_H

#include <iostream>
#include <string>
#include <queue>
#include "ChefeCozinha.h"

using namespace std;

class Mesa {


private:
    int INDEX;
    bool pediuFim = false;
    queue<string> pedidosNaoAtentidos;
    ChefeCozinha *atendendo;
public:


    Mesa(int index) {
        this->atendendo = nullptr;
        this->INDEX = index;
    }

    Mesa(const Mesa &mesa) : INDEX(mesa.INDEX),
                             atendendo(mesa.atendendo), pedidosNaoAtentidos(mesa.pedidosNaoAtentidos) {

    }


    bool getPediuFim() {
        return this->pediuFim;
    }


    void setPediuFim(bool fim) {
        this->pediuFim = fim;
    }

/**
* Cria um novo cozinheiro e escreve a mesa que esta sendo atendida e os pedidos em espera
* @param index
*/
    void selecionandoCuzinheiro(int index) {

        ChefeCozinha *chefe = new ChefeCozinha(index);
        this->atendendo = chefe;

        escreverMesaAtendida(getINDEX(), index);

        cozinharPedidosEmEspera();
    }

/**
*  retorna verdadeiro de ele estiver pedidos em espera e falso se estiver vazia
* @return
*/
    bool pedidosEmEspera() {
        if (!pedidosNaoAtentidos.empty()) {
            return true;
        } else {
            return false; // esta vazia
        }

    }

    int getINDEX() {
        return this->INDEX;
    }

/**
*  retorna verdadeiro de ele estiver esperando e falso se estiver com um cozinheiro
* @return
*/
    bool getEsperando() {
        if (this->atendendo == nullptr)
            return true;
        else {

            return false;
        }
    }

/**
* Adiciona na lista de espera
* @param pedido
*/
    void addNaListaDeEspera(string pedido) {
        pedidosNaoAtentidos.push(pedido);
    }

/**
* Prepara apenas um pedido
* @param pedido
*/
    void prepararPedido(string pedido) {

        atendendo->enviarPedido(pedido);

    }

/**
* Mostra o numero do chfe
*
* @return
*/
    int numeroDoChefe() {
        return atendendo->getINDEX();
    }

/**
*  Termina o processo volta pra nulo
*/
    void liberarChefe() {
        delete atendendo;
        this->atendendo = nullptr;
    }

/**
* Escreve no txt a mesa que vai ser atendida pelo chefe
*/
    void escreverMesaAtendida(int indexMesa, int indexDoschefes) {

        char buff[10240]; // onde ele vai escrever
        sprintf(buff, "ChefeCozinha_%0d.txt", indexDoschefes);

        FILE *arquivo;
        arquivo = fopen(buff, "a");

        char mesa[30]; // escreve o nome da mesa
        sprintf(mesa, "Mesa %d:", indexMesa);

        fprintf(arquivo, "%s \r\n", mesa);
        fclose(arquivo);


    }

/**
 * Prepara todos os pedidos em espera
 */
    void cozinharPedidosEmEspera() {
        if (!pedidosNaoAtentidos.empty()) {
            while (!pedidosNaoAtentidos.empty()) {
                atendendo->enviarPedido(pedidosNaoAtentidos.front());
                pedidosNaoAtentidos.pop();

            }

        }
    }


};

#endif //COZINHASISTEMASOPERACIONAIS_CHEFECOZINHA_H
