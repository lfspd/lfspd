#Adding proxy to apt
echo "Acquire::http::proxy \"http://proxy.elvees.com:3128/\";" >> /etc/apt/apt.conf.d/05proxy
echo "Acquire::https::proxy \"http:///proxy.elvees.com:3128/\";" >> /etc/apt/apt.conf.d/05proxy
echo "Acquire::ftp::proxy \"http://proxy.elvees.com:3128/\";" >> /etc/apt/apt.conf.d/05proxy

#forcing apt to use IPv4
# See https://www.cyberciti.biz/faq/howto-use-apt-get-with-ipv6-or-ipv4-transport-on-ubuntu-debian/
apt -o Acquire::ForceIPv4=true update
echo "Acquire::ForceIPv4=true;" >> /etc/apt/apt.conf.d/06ForceIPv4Transport

#setting snap proxies
snap set system proxy.http="http://proxy.elvees.com:3128"
snap set system proxy.https="http://proxy.elvees.com:3128"

#Добавить в ~/.bashrc для хостов зеленоградского и московского офиса:
#https://docs.elvees.com/pages/viewpage.action?pageId=5542154
export http_proxy=http://proxy.elvees.com:3128
export ftp_proxy=$http_proxy
export https_proxy=$http_proxy
export no_proxy=10.0.0.0/8,127.0.0.1,192.168.0.0/16,.elvees.com,.elvees-nix.com,localhost
