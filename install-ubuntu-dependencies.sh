# prevent prompting for restart when installing core packages such as libssl
DEBIAN_FRONTEND=noninteractive
echo '* libraries/restart-without-asking boolean true' | sudo debconf-set-selections

# install dependencies
sudo apt update
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install software-properties-common ansible python-apt python-pip rpm -y
sudo pip install -q jmespath

# install inspec
sudo apt install wget
wget https://packages.chef.io/files/stable/inspec/4.18.0/ubuntu/18.04/inspec_4.18.0-1_amd64.deb
sudo dpkg -i inspec_4.18.0-1_amd64.deb
rm inspec_4.18.0-1_amd64.deb
