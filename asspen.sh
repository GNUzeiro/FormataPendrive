#!/bin/bash
clear
if [ $1 = "-h" ]; then
	echo "_Joni_Softwares________________2019_"
	echo "===================================="
	echo "      LIMPA PENDRIVE VERSAO 0.1     "
	echo "===================================="
	echo "   Modo de usar:                    "
	echo " interface: sudo ./asspen.sh        "
	echo " direto: sudo ./asspen.sh [unidade] [formato]#"
	echo "====================================#"
elif [ $1 = "-d" ]; then
	UNIDADE=$2
	FORMATO=$3
    echo "[*] Iniciando..."
	sleep 1
	echo "[*] Desmontando unidade $UNIDADE..."
	sudo umount /dev/$UNIDADE 2> /dev/null
	sleep 1

	#formataçao
	echo "[*] Formatando..."
	sudo mkfs.$FORMATO /dev/$UNIDADE > /dev/null
	sleep 3
	if [[ $? -ne 0 ]]; then
		echo "[ERROR] Problema na formatação"
	else
		echo "[OK] Formatação bem sucedida"
		echo "Dispositivo: /dev/$UNIDADE"
		echo "Formato: $FORMATO"
	fi
else
	
fi
