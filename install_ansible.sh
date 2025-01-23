#!/bin/bash

sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository --yes ppa:ansible/ansible
sudo apt install ansible -y