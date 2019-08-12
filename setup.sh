#!/bin/sh

sudo yum update -y -q -e 0

mkdir ~/docker
mkdir ~/docker/mysql
mkdir ~/docker/librenms
mkdir ~/docker/librenms/logs
mkdir ~/docker/librenms/rrd

sudo yum install docker
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker foghorn
sudo systemctl restart docker

sudo yum install ntpdate -y -q -e 0
sudo ntpdate 1.ro.pool.ntp.org

#docker network create --driver bridge --subnet 172.30.0.0/16 securenet

sudo chcon -Rt svirt_sandbox_file_t ~/docker
