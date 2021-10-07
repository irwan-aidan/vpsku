# AUTOSCRIPT APEACHSAN

## CARA-CARANYA

1. Pertama sekali, sila jalankan script ini terlebih dahulu.

```sh
apt update && apt upgrade -y --fix-missing && update-grub && sleep 2 && reboot
```
**Selepas install, server akan reboot. Tunggu sehingga server selesai reboot**

2. Kemudian jalankan script ini.
```sh
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl && wget https://raw.githubusercontent.com/irwan-aidan/vpsku/main/install.sh && chmod +x install.sh && ./install.sh  && rm -rf ./install.sh
```

```md
MIT License

Copyright (c) 2021 KaizenVPN

