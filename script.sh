
#! /bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo echo "<h1>Hello World</h1>" > /var/www/html/index.html
sudo service httpd start
sudo chkconifg httpd on