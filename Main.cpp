#include <iostream>
#include <string>
#include <queue>
#include <sstream>
#include <stdlib.h>


#include "../Controller/HostessConect.h"

using namespace std;


int numeroDaMesa = 0;
string pedidoDamesa;



/**
 * Diferencia o pedido e o numero da mesa
 * @param pedidoenumero
 */
void pedido_E_Mesa(string pedidoenumero) {
    bool flag = false;
    string numero;
    string pedido;
    for (int i = 0; i < pedidoenumero.size(); ++i) {
        if (pedidoenumero[i] == ' ' && !flag) {
            flag = true;
            ++i; // para tirar o primeiro espaço
        }

        if (!flag) {
            numero = numero + pedidoenumero[i];

        } else {
            pedido = pedido + pedidoenumero[i];

        }


    }
    numeroDaMesa = stoi(numero);
    pedidoDamesa = pedido;

}


int main() {

    int numeroDeMesas = 0;
    int numeroDeChefes = 0;

    string pedido;

    cin >> numeroDeChefes >> numeroDeMesas;
    cin.ignore();

    HostessConect Hostess(numeroDeMesas, numeroDeChefes);

    getline(cin, pedido);

    while (pedido != "Fim") {

        pedido_E_Mesa(pedido);

        Hostess.fazendoPedido(numeroDaMesa, pedidoDamesa);

        getline(cin, pedido);

    }


    return 0;
}