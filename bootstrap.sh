apt-get install -y curl
apt-get install -y git mongodb gcc tidy python3 python3-pip python3-dev libzmq-dev
apt-get install -y libldap2-dev libsasl2-dev libssl-dev
apt-get install -y libxmlsec1-dev libltdl-dev

curl -fsSL https://get.docker.com/ | sh #This will setup the Docker repo

sudo echo "http://ftp.fr.debian.org/debian testing main" >> /etc/apt/sources.list

sudo apt-get update
sudo apt-get install -y python3.6

systemctl start mongodb
systemctl enable mongodb
systemctl start docker
systemctl enable docker

pip3 install --upgrade pip

/usr/local/bin/python3.6 -m pip install --upgrade git+https://github.com/UCL-INGI/INGInious

# Changing inginious configuration file for webapp
cp /vagrant/files_to_copy/installer.py /usr/local/lib/python3.6/site-packages/inginious/frontend/

mkdir -p /vagrant/inginious && cd /vagrant/inginious
sudo inginious-install
cp /vagrant/files_to_copy/ingi_config.yaml ./configuration.yaml

chmod +x /vagrant/run_inginious
sudo cp /vagrant/run_inginious /usr/sbin/ || true
cp /vagrant/files_to_copy/.bashrc /home/vagrant/.bashrc
source /home/vagrant/.bashrc

cp -r  /vagrant/inginious /home/vagrant/

sudo run_inginious &