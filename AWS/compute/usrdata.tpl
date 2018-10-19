#!/bin/bash
yum install httpd -y
echo "Subnet for Firewall" : ${firewall_subnets}" >> /var/www/index/index.html
service httpd start
chkconfig httpd on 