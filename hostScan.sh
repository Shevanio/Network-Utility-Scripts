#!/bin/bash

function ctrl_c(){
  echo -e "\n\n [!] Saliendo...\n"
  tput cnorm; exit 1
}

# Ctrl + C
trap ctrl_c SIGINT

tput civis
IP=$(hostname -I | awk '{print $1}')
OCTETS=$(echo $IP | cut -d '.' -f 1-3)


echo "Active hosts:"
for lastoctetip in $(seq 1 254); do
    timeout 1 bash -c "ping -c 1 $OCTETS.$lastoctetip" &>/dev/null && echo "[+] Host 192.168.1.$lastoctetip - Active" &
done
wait

echo 

echo "Ports discovered:"
#declare -a ports=( $(seq 1 65535) )
for lastoctetip in $(seq 1 254); do
    for port in 21 22 23 25 80 139 443 445 8080; do
    #for port in ${ports[@]}; do
        timeout 1 bash -c "echo '' > /dev/tcp/$OCTETS.$lastoctetip/$port" 2>/dev/null && echo "[+] Host 192.168.1.$lastoctetip - Port $port (OPEN)" &
    done
done



wait

tput cnorm
