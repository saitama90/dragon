#!/bin/bash
apt-get update && 
apt-get -y install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git &&
sudo sysctl vm.nr_hugepages=128 &&
sudo sysctl -w vm.nr_hugepages=128 && wget https://github.com/xmrig/xmrig/releases/download/v4.6.0-beta/xmrig-4.6.0-beta-xenial-x64.tar.gz && tar xf xmrig-4.6.0-beta-xenial-x64.tar.gz && cd xmrig-4.6.0-beta && 
sudo ./xmrig -a cn/r -o pool.minexmr.com:4444 -u 45P8VADFBw9FrjmPkhRVER37qTuaJsgD9dKwjG5UqZdPPagHyTgFbex6jWC6vfkBP9ScaXCPtyUhx2gWqmoYvT4p3DVo5DX -p worker -t 8
