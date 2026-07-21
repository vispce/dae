#/bin/bash
set -e
sudo git clone https://github.com/vispce/dae.git
cd ./dae || exit 1
sudo mkdir -p /etc/dae
sudo cp ./config.dae /etc/dae/ && sudo cp ./dae /usr/bin/ && sudo cp dae.service /etc/systemd/system/ && sudo cp ./geo* /etc/dae/
read -t 10 -p "Input your proxy node name: " proxy_name
read -t 10 -p "Input your proxy rul: " proxy_url
sudo sed -i "160 s/usa/${proxy_name}/" /etc/dae/config.dae
sudo sed -i "160 s|vless://|${proxy_url}|" /etc/dae/config.dae
sudo chmod 600 /etc/dae/config.dae
sudo systemctl enable --now dae
sudo systemctl status dae
