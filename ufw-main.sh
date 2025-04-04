#!/bin/bash

read -p "Node public IP: " node_public_ip

apt update && apt install ufw -y

ufw allow 443/tcp comment "Marzban Dashboard"

ufw allow 22/tcp comment "SSH"

ufw allow from "$node_public_ip" to any port 62050 proto tcp comment 'Marznode'

ufw allow from "$node_public_ip" to any port 62051 proto tcp comment 'Marznode'

ufw enable
