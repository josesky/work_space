#!/bin/bash

red='\e[91m'
green='\e[92m'
yellow='\e[93m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'

release=$(lsb_release -d | cut -d : -f 2)
echo -e "Your system version $release"
echo -e "${green}===> downling... "
cd $HOME

app='https://codeload.github.com/josesky/work_space/zip/refs/heads/main'
curl  -O ${app} work_space.tar.gz 

tar -zxvf $HOME/work_space.tar.gz -C $HOME

echo -e "${green}===> success!"
