#Inginious install
apt-get install -y git mongodb mongodb-server gcc libtidy python3 python3-pip python3-devel zeromq-devel redhat-rpm-config docker xmlsec1-openssl python3-xmlsec

systemctl unmask mongodb
systemctl start mongod
systemctl enable mongod
systemctl start docker
systemctl enable docker

pip3 install --upgrade pip

# for syllabus webapp
/usr/local/bin/pip3 install flask
# for rst syntax highlighting
/usr/local/bin/pip3 install pygments

/usr/local/bin/pip3 install --upgrade git+https://github.com/UCL-INGI/INGInious
