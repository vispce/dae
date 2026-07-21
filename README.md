<h1 align="center" style="color:#BFDEFF">Install dae server for linux</h1>

> [!IMPORTANT]
>
> - make sure your liunx os used systemd manager
>
> - have a socks5, http, https, ss, ssr, vmess, vless, trojan, tuic, juicity, hysteria2, etc url
>> just like the expample :
>> ```bash
>>vless://xxx
>>vmless://xxx
>>```
---

## Install
```bash
git clone https://github.com/vispce/dae.git

sudo mkdir -p /etc/dae

sudo ./config.dae /etc/dae/ && sudo cp ./dae /usr/bin/ && sudo cp dae.service /etc/systemd/system/ && sudo cp geo* /etc/dae/

sudo sed -i "s|vless://|your self url |g" /etc/dae/config.dae  ## maybe you can manually edit vim +160 /etc/dae/config.dae

sudo systemctl enable --now dae && sudo systemctl status dae
```


## Install by shell
```bash
sudo curl -fsSL https://github.com/vispce/dae/install.sh | sh
```
---

> [!NOTE]
> - This document is for reference only
> - [origin dae repository](https://github.com/daeuniverse/dae "Jump to origin dae repository")