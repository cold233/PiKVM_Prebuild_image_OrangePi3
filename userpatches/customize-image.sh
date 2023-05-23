#!/bin/bash

apt update
apt install -y git vim make python3-dev gcc
cd
git clone https://github.com/Road-tech/kvmd-armbian.git && cd kvmd-armbian
pwd
source ./install.sh
