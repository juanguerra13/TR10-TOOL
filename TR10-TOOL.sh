#!/bin/bash 
#TR10-TOOL.sh
#
# Este script te ayudará en el proceso de rooteo de la Tablet TR10CS1 y TR10RS1
# Debes activar la depuración USB en tu dispositivo para que funcione sin problemas
#
#~ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# A TINY TR10 CLI TOOL FOR GNU/LINUX BASH VERSION 1.0.0
#
# Developer  : Erick Carvajal Rodriguez
# Contact    : http://twitter.com/neocarvajal && http://fb.com/neocarvajal
# Date       : 03/12/2015
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# 
clear
# Variables Globales TR10-TOOL---------------------------------------
. FUNCTIONS/7-conections_tr10_tool.sh            
adb_globals
# Cerrando servidor ADB---------------------------------------------
echo "Cerrando conexiones ADB viejas ..."
rm -rf D_LOG/*
$ADB kill-server
# Titulo -----------------------------------------------------------
echo -e '\t \v \e[33;1m
.########.########.....##.....#####.......########..#######...#######..##......
....##....##.....##..####....##...##.........##....##.....##.##.....##.##......
....##....##.....##....##...##.....##........##....##.....##.##.....##.##......
....##....########.....##...##.....##...###..##....##.....##.##.....##.##......
....##....##...##......##...##.....##........##....##.....##.##.....##.##......
....##....##....##.....##....##...##.........##....##.....##.##.....##.##......
....##....##.....##..######...#####..........##.....#######...#######..########
\e[m'
echo " "
# Iniciando Servidor ADB---------------------------------------------
echo "... Inicializando Servidor ADB"
echo " "
$ADB start-server

# Librerias TR10-TOOL------------------------------------------------
. FUNCTIONS/0-main_menu.sh
. FUNCTIONS/1-temp_recovery_root_gapps.sh
. FUNCTIONS/2-reboot_temp_recovery.sh
. FUNCTIONS/3-reboot_droidboot.sh
. FUNCTIONS/4-reboot_recovery.sh
. FUNCTIONS/5-enter_shell.sh
. FUNCTIONS/6-reconect_adb_tr10_tool.sh
. FUNCTIONS/8-bypass_lock.sh
. FUNCTIONS/9-push_file.sh
. FUNCTIONS/10-multi_flash_option.sh
. FUNCTIONS/11-stream_devices.sh
. FUNCTIONS/12-multi_flash_tool.sh


# Alerta TR10-TOOL ------------------------------------------------
echo " "
echo "# - - - - - - - - - - - - - - - - - - - - - - - -#"
echo -e "\t\t\t\e[33;1mAVISO\e[m 						"
echo "# - - - - - - - - - - - - - - - - - - - - - - - - "
echo "# Antes de empezar a trabajar con tu dispositivo #"
echo "#                                                #"
echo "# verifica que has activado la depuración USB    #"
echo "#                                                #"
echo "# en el menú 'desarrollador'                     #"
echo "#                                                #"
echo "# # # # # # # # # # # # # # # # # # # # # # # # # "
echo " "
read -t 10 -p "Presione 'Enter' o espere 10 segundos Para continuar..."
echo " "
# Aviso -------------------------------------------------------------
echo " "
echo "# - - - - - - - - - - - - - - - - - - - - - - - -#"
echo -e "\t\t\e[33;1mINFORMACIÓN TR10-TOOL\e[m 			"
echo "# - - - - - - - - - - - - - - - - - - - - - - - - "
echo "# Esta herramienta fue desarrollada con fines    #"
echo "# educativos, cada persona es responsable de su  #"
echo "# uso.                                           #"
echo "# - - - - - - - - - - - - - - - - - - - - - - - -#"
echo "# Desarrollado por : T.S.U Erick Carvajal R      #"
echo "#                                                #"
echo "# Nick: neocarvajal                              #"
echo "#                                                #"
echo "# Contacto: neocarvajal12@gmail.com              #"
echo "#                                                #"
echo "# Redes: @neocarvajal on #Twitter and #Facebook  #"
echo "#                                                #"
echo "##################################################"
echo " "
read -t 5 -p "Presione 'Enter' o espere 5 segundos Para continuar..."
echo " "
clear
# Menú principal ---------------------------------------------------
main_menu