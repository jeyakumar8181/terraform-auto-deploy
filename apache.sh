#!/bin/sh

sudo yum -y install httpd
sudo yum -y install php
cd /var/www/html
cat > index.php <<- "EOF"
<?php
echo "Hello from Terraform deploy";
?>
EOF

service httpd start
