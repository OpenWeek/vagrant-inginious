curl -fsSL https://get.docker.com/ | sh #This will setup the Docker repo
apt-get install -y git mongodb gcc tidy python3 python3-pip python3-dev libzmq-dev
apt-get install -y libldap2-dev libsasl2-dev libssl-dev
apt-get install -y libxmlsec1-dev libltdl-dev

systemctl start mongodb
systemctl enable mongodb
systemctl start docker
systemctl enable docker

pip3 install --upgrade pip

/usr/local/bin/pip3 install --upgrade git+https://github.com/UCL-INGI/INGInious