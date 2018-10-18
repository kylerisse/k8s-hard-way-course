#!/bin/bash

sudo apt-get install -y nginx
sudo systemctl enable nginx
sudo mkdir -p /etc/nginx/tcpconf.d

sudo chown user /etc/nginx/nginx.conf
echo 'include /etc/nginx/tcpconf.d/*;' >> /etc/nginx/nginx.conf
sudo chown root /etc/nginx/nginx.conf

cat << EOF | sudo tee /etc/nginx/tcpconf.d/kubernetes.conf
stream {
    upstream kubernetes {
        server hw-master1-priv:6443;
        server hw-master2-priv:6443;
        server hw-master3-priv:6443;
    }

    server {
        listen 6443;
        listen 443;
        proxy_pass kubernetes;
    }
}
EOF

sudo systemctl restart nginx
sudo nginx -s reload


