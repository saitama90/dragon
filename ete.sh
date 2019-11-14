wget http://us.download.nvidia.com/tesla/415.25/nvidia-diag-driver-local-repo-ubuntu1804-415.25_1.0-1_amd64.deb
sudo dpkg -i nvidia-diag-driver-local-repo-ubuntu1804-415.25_1.0-1_amd64.deb
sudo apt-key add /var/nvidia-diag-driver-local-repo-415.25/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda-drivers --allow-unauthenticated
sudo apt-get install gcc g++ build-essential libssl-dev automake linux-headers-$(uname -r) git gawk libcurl4-openssl-dev libjansson-dev xorg libc++-dev libgmp-dev python-dev -y
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-ubuntu1804.pin
sudo mv cuda-ubuntu1804.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget http://developer.download.nvidia.com/compute/cuda/10.1/Prod/local_installers/cuda-repo-ubuntu1804-10-1-local-10.1.243-418.87.00_1.0-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1804-10-1-local-10.1.243-418.87.00_1.0-1_amd64.deb
sudo apt-key add /var/cuda-repo-10-1-local-10.1.243-418.87.00/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda
sudo apt-get install libcurl3 -y
wget https://github.com/ethereum-mining/ethminer/releases/download/v0.16.1/ethminer-0.16.1-linux-x86_64.tar.gz
tar xvzf ethminer-0.16.1-linux-x86_64.tar.gz
cd  bin
./ethminer -U -P stratum://0x623b30B9Fe4F907d5eA7D7283c1578b4aF1A93c9.aws@us2.ethermine.org:4444
