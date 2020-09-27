#!/bin/sh
wget http://download.savannah.gnu.org/releases/quagga/quagga-1.1.1.tar.gz
tar -xzvf quagga-1.1.1.tar.gz
cd quagga-1.1.1
./configure --enable-vtysh --enable-zebra --enable-ospfd --enable-user=root --enable-group=root --enable-vty-group=root
make
make install
cd /usr/local/etc
cp zebra.conf.sample zebra.conf
cp ripd.conf.sample rip.conf
cp ospfd.conf.sample ospfd.conf
cp /usr/local/lib/libzebra.so.1 /lib
ldconfig

