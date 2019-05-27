#!/bin/bash

sudo yum update -y

mkdir /home/foghorn/docker
mkdir /home/foghorn/docker/mysql
mkdir /home/foghorn/docker/librenms
mkdir /home/foghorn/docker/librenms/logs
mkdir /home/foghorn/docker/librenms/rrd

sudo yum install docker
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker foghorn

sudo chcon -Rt svirt_sandbox_file_t /home/foghorn/docker