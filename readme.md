# DAM-Vagrant

## Project Setup

Local Virtual server setup for my personal project.

1. git clone https://github.com/TakayukiSakai/dam-vagrant.git
2. cd dam-vagrant
3. vagrant up
4. git clone git@dam.effers.com:dam.git (need my(Takayuki Sakai) approvement)
5. cp config/* dam/application/config/
6. cp index.php dam/index.php

## IP Address

The IP address to access the virtual machine is set to 192.168.33.33

If you want to use domain name, add below line to your /etc/hosts file.

`192.168.33.33 dam.local`
