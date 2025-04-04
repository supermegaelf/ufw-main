#!/bin/bash

apt update && apt install ufw -y

ufw allow 443/tcp comment "Marzban Dashboard"
ufw allow 22/tcp comment "SSH"

ufw enable
