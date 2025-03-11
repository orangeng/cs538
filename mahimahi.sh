#!/bin/bash

# Install dependencies
sudo apt install protobuf-compiler libprotobuf-dev autotools-dev dh-autoreconf iptables pkg-config dnsmasq-base apache2-bin apache2-dev debhelper libssl-dev ssl-cert libxcb-present-dev libcairo2-dev libpango1.0-dev

# Building
cd ~
git clone https://github.com/ravinet/mahimahi
cd mahimahi
./autogen.sh
./configure
make
sudo make install
