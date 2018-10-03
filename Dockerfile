FROM ubuntu

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install wget vim ansible openssh-client -y

RUN wget -q --show-progress --https-only --timestamping \
  https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 \
  https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64; \
chmod +x cfssl_linux-amd64 cfssljson_linux-amd64; \
mv cfssl_linux-amd64 /usr/local/bin/cfssl; \
mv cfssljson_linux-amd64 /usr/local/bin/cfssljson; \
cfssl version 

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.10.2/bin/linux/amd64/kubectl; \
chmod +x kubectl; \
mv kubectl /usr/local/bin/; \
kubectl version --client

RUN echo 'export PS1="\e[0;33m\u@\h \W #\e[m "' >> /etc/bash.bashrc
RUN echo "cd ~" >> /etc/bash.bashrc
