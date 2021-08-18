#########################################################################
# Script 1 - Troubleshooting básico de apenas 1 host                     
#                                                                
#                                                
#                                                                
# Autor:                Marcos Marques @mqs.jr @linuquix   
# Data:                 09/08/2021  
# Ultima Alteração:     09/08/2021                                       
#                                                                
# Descrição:            Realiza o troubleshooting básico de apenas 1 host 
#                                                
# Versão:               Beta
#                                                                
# Uso: ./_Script1_Troubl.sh                                                 
#                                                                
#########################################################################

#INICIO DO SCRIPT

echo ""
echo Segue troubleshooting do host: $1
echo ""

# MOSTRAR DATA
echo ""
echo -n "Data: " 
date
echo ""

#HOST
echo "================================================================================================="
echo ""
echo "#HOST"
host $1
echo ""
echo "================================================================================================="

echo ""

#PING
echo "#PING"
ping -c5 $1
echo ""
echo "================================================================================================="


echo ""
echo "#PINGv6"
ping6 -c5 $1
echo ""
echo "================================================================================================="


echo ""

#TRACE
echo "#TRACE"
mtr -rn $1
echo "================================================================================================="
echo ""


echo ""

#NMAP V4 E V6
echo "#NMAP"
echo nmap -p 22,53,80,443,8080 -Pn $1
nmap -p 22,53,80,443,8080 -Pn $1

echo ""

echo "================================================================================================="
echo "#NMAP V6"
echo nmap -6 -p 22,53,80,443,8080 -Pn $1
nmap -6 -p 22,53,80,443,8080 -Pn $1


echo "================================================================================================="

# FIM DO SCRIPT
