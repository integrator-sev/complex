#!/bin/bash

cd /home/nonroot/terra/test2
terraform output public_ip | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5$

i=`head -n 1 /etc/ansible/aws_ip.txt | tail -n 1`

echo -en "[MAVEN]\n$i\n" > /etc/ansible/hosts

i=`head -n 2 /etc/ansible/aws_ip.txt | tail -n 1`

echo -en "[TOMCAT]\n$i\n" >> /etc/ansible/hosts
