#/bin/bash
set -e
read -p "Input your proxy node name: " proxy_name
read -p "Input your proxy rul: " proxy_url
sudo git clone https://github.com/vispce/dae.git
cd ./dae || exit 1
sudo mkdir -p /etc/dae
sudo cp ./config.dae /etc/dae/ && sudo cp ./dae /usr/bin/ && sudo cp dae.service /etc/systemd/system/ && sudo cp ./geo* /etc/dae/
sudo sed -i "160 s/usa/${proxy_name}/" /etc/dae/config.dae
sudo sed -i "160 s|vless://|${proxy_url}|" /etc/dae/config.dae
sudo chmod 600 /etc/dae/config.dae
sudo systemctl enable --now dae
sudo systemctl status dae
