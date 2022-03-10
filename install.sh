
#Ubuntu 20.04 Version installation Script


sudo apt install -y net-tools git
ip=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.2.0.1'`


sudo add-apt-repository universe -y
sudo apt update -y

sudo apt install -y gnupg2 curl  software-properties-common
curl https://packages.grafana.com/gpg.key | sudo apt-key add -

sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"

sudo apt update -y
sudo apt -y install grafana

sudo systemctl start grafana-server


sudo apt -y install ufw

sudo ufw enable

sudo ufw allow ssh
sudo ufw allow 3000/tcp


sudo apt -y update


echo "Grafana Portal Link: http://"$ip":3000"
