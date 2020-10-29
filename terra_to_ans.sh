#!/bin/bash

#cd /home/nonroot/terra/test2
terraform output public_ip | awk -F\" '{print $2}'  > /etc/ansible/aws_ip

i=`egrep -v '^#|^$' /etc/ansible/aws_ip  |  head -n 1 | tail -n 1`

echo -en "[MAVEN]\n$i\n" > /etc/ansible/hosts

i=`egrep -v '^#|^$' /etc/ansible/aws_ip  |  head -n 2 | tail -n 1`

echo -en "[TOMCAT]\n$i\n" >> /etc/ansible/hosts