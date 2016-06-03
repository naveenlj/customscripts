#!/bin/bash

set -x 

wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.6.1.tar.xz

yum install xz -y

unxz linux-4.6.1.tar.xz

tar -vxf linux-4.6.1.tar

cp -rf linux-4.6.1 /usr/src

cd /usr/src/

cd linux-4.6.1/

make mrproper

yum install ncurses -y 

yum install ncurses-devel -y 

make menuconfig
   
yum install openssl-devel -y 
   
yum install bc -y

make 

make modules

make modules_install

make install

exit 0
