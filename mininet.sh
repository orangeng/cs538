#!/bin/bash

# Pull in mininet
cd ~
git clone https://github.com/mininet/mininet
cd mininet
git checkout -b mininet-2.3.0 2.3.0
sed -i 's|git://|https://|g' ./util/install.sh # Because sometimes git clone git:// fails

# Install
cd ~
./mininet/util/install.sh -a

# Run test
sudo mn --switch ovsbr --test pingall
