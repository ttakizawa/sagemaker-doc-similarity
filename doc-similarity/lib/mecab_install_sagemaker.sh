#!/bin/sh

cp mecab-0.996.tar.gz /home/ec2-user/src/
cp mecab-ipadic-2.7.0-20070801.tar.gz /home/ec2-user/src/

cd /home/ec2-user/src/

tar zxvf mecab-0.996.tar.gz
cd mecab-0.996
./configure --enable-utf8-only
sudo make
sudo make install

cd /home/ec2-user/src/

tar zxvf mecab-ipadic-2.7.0-20070801.tar.gz
cd mecab-ipadic-2.7.0-20070801
./configure --with-charset=utf8
sudo make
sudo make install

sudo ln -s /usr/libexec/gcc/x86_64-amazon-linux/4.8.5/ccplus /usr/local/bin
