
sudo apt-get update && sudo apt-get install git make automake screen libcurl4-openssl-dev

git clone https://github.com/wolf9466/cpuminer-multi

cd cpuminer-multi

./autogen.sh

CFLAGS="-march=native" ./configure --disable-aes-ni 

make

/*
screen -S miner ./minerd -a cryptonight -o monero pool address -u monero wallet address -p x -t 1
*/