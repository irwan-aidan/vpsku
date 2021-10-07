#!/bin/bash
curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/irwan-aidan/vpsku/main/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user corloussss@gmail.com
from corloussss@gmail.com
password vmlpmbagegqzhsqy
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
wget -O autobackupemail "https://raw.githubusercontent.com/irwan-aidan/vpsku/main/autobackupemail.sh"
wget -O autobackupnginx "https://raw.githubusercontent.com/irwan-aidan/vpsku/main/autobackupnginx.sh"
wget -O backupemail "https://raw.githubusercontent.com/irwan-aidan/vpsku/main/backupemail.sh"
wget -O backupnginx "https://raw.githubusercontent.com/irwan-aidan/vpsku/main/backupnginx.sh"
wget -O bckp "https://raw.githubusercontent.com/irwan-aidan/vpsku/main/bckp.sh"
wget -O restore "https://raw.githubusercontent.com/irwan-aidan/vpsku/main/restore.sh"
wget -O strt "https://raw.githubusercontent.com/irwan-aidan/vpsku/main/strt.sh"
wget -O limit-speed "https://raw.githubusercontent.com/irwan-aidan/vpsku/main/limit-speed.sh"
chmod +x autobackupemail
chmod +x autobackupnginx
chmod +x backupemail
chmod +x backupnginx
chmod +x bckp
chmod +x restore
chmod +x strt
chmod +x limit-speed
cd
rm -f /root/set-br.sh
