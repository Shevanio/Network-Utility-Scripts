#!/bin/bash

function ctrl_c(){
  echo -e "\n\n [!] Saliendo...\n"
  tput cnorm; exit 1
}

# Ctrl + C
trap ctrl_c SIGINT

tput civis

echo "Active hosts:"
for i in $(seq 1 254); do
    #for port in 21 22 23 25 80 139 443 445 8080; do
        #timeout 1 bash -c "echo '' > /dev/tcp/192.168.1.$i/$port" 2>/dev/null && echo "[+] Host 192.168.1.$i - Port $port (OPEN)" &
    timeout 1 bash -c "ping -c 1 192.168.1.$i" &>/dev/null && echo "[+] Host 192.168.1.$i - Active" &
    #done
done
wait

echo 

echo "Ports discovered:"
#declare -a ports=( $(seq 1 65535) )
for i in $(seq 1 254); do
    for port in 21 22 23 25 80 139 443 445 8080; do
    #for port in ${ports[@]}; do
        timeout 1 bash -c "echo '' > /dev/tcp/192.168.1.$i/$port" 2>/dev/null && echo "[+] Host 192.168.1.$i - Port $port (OPEN)" &
        #timeout 1 bash -c "ping -c 1 192.168.1.$i" &>/dev/null && echo "[+] Host 192.168.1.$i - Active" &
    done
done



wait

tput cnorm
