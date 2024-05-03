#!/bin/bash			

while [[ "$escolha" != "5" ]]
	do	
		echo "1- Ativar o modo Monitor"
		echo "2- Desativar o modo Monitor"
		echo "3- Ativar o Bluetooth"
		echo "4- Desativar o Bluetooth"
		echo "5- Sair"
		echo " "
		
		echo "Introduza a sua escolha: "
		read escolha
		
		case $escolha in
			1)
				sudo airmon-ng check kill
				sudo airmon-ng start wlan0
				echo " "
				echo "Modo Monitor Ativado!"
				sleep 1
				clear
			;;
			
			2)
				sudo airmon-ng stop wlan0mon
				sudo service networking start
				sudo service wpa_supplicant start
				sudo service NetworkManager start
				echo " "
				echo "Modo Monitor Desativado!"
				sleep 1
				clear
			;;
			
			3)
				sudo service bluetooth start
				echo " "
				echo "Bluetooth Ativado!"
				sleep 1
				clear
			;;
			
			4)
				sudo service bluetooth stop
				echo " "
				echo "Bluetooth Desativado"
				sleep 1
				clear
				
			;;
			
			5)
				sleep 1
				clear
				break
			;;
			
			*)
				echo Comando desconhecido!
				sleep 1
				clear
			;;
			
		esac
	done
exit
