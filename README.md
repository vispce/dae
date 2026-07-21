<h1 align="center">Install dae server for linux</h1>

> [!TIP]
> - make sure your linux used systemd manager
> - have a vless or vmess url
>
> just like :
> ```bash
> vless://xxx
> vmess://xxx
> ```

---

> [!IMPORTANT]
> Please replace the example node URL with your actual VLESS or VMESS subscription URL before starting the service.

---

> [!NOTE]
> The default configuration routes all traffic through the proxy group. You can customize the routing rules according to your needs.

---

> [!WARNING]
> Make sure your firewall allows outbound connections on the ports used by your proxy nodes.

---

> [!CAUTION]
> Do not run dae on systems with kernel version below 5.17. Check your kernel version with `uname -r`.