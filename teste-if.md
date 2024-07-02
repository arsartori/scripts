#!/bin/bash

if [ -z $1 ]; then
       echo "Você não digitou nada."	
       exit 1
fi

OPCAO=$1

if [ $OPCAO == 'Update' ]; then
	echo "Opção Update"
elif [ $OPCAO == 'Upgrade' ]; then
	echo "Opção Upgrade"
elif [ $OPCAO == 'Iniciar' ]; then
	echo "Opção Iniciar"
else
	echo "Opção não é válida!"
fi
