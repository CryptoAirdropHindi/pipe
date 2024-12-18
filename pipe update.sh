#!/bin/bash
echo -e ""
echo -e ""
echo -e '\e[34m'
echo -e ' ██████╗██████╗ ██╗   ██╗██████╗ ████████╗ ██████╗  █████╗ ██╗██████╗ ██████╗ ██████╗  ██████╗ ██████╗ ██╗  ██╗██╗███╗   ██╗██████╗ ██╗'
echo -e '██╔════╝██╔══██╗╚██╗ ██╔╝██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗██║██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██╔══██╗██║  ██║██║████╗  ██║██╔══██╗██║'
echo -e '██║     ██████╔╝ ╚████╔╝ ██████╔╝   ██║   ██║   ██║███████║██║██████╔╝██║  ██║██████╔╝██║   ██║██████╔╝███████║██║██╔██╗ ██║██║  ██║██║'
echo -e '██║     ██╔══██╗  ╚██╔╝  ██╔═══╝    ██║   ██║   ██║██╔══██║██║██╔══██╗██║  ██║██╔══██╗██║   ██║██╔═══╝ ██╔══██║██║██║╚██╗██║██║  ██║██║'
echo -e '╚██████╗██║  ██║   ██║   ██║        ██║   ╚██████╔╝██║  ██║██║██║  ██║██████╔╝██║  ██║╚██████╔╝██║     ██║  ██║██║██║ ╚████║██████╔╝██║'
echo -e ' ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝        ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝'
echo -e '\e[0m'
echo -e "                 \033[48;2;9;10;12m CryptoAirdropHindi \e[0m";
echo -e "\e[0;37m Subscribe Our Telegram Channel: \e[4;35mhttps://t.me/Crypto_airdropHM/";
echo -e "\e[0m"
echo -e ""
echo -e ""


sudo systemctl stop dcdnd

sudo rm -f /opt/dcdn/pipe-tool /opt/dcdn/dcdnd

read -p "Enter the new PIPE download URL: " PIPE_URL
read -p "Enter the new DCDND download URL: " DCDND_URL

sudo curl -L "$PIPE_URL" -o /opt/dcdn/pipe-tool
sudo curl -L "$DCDND_URL" -o /opt/dcdn/dcdnd

sudo chmod +x /opt/dcdn/pipe-tool
sudo chmod +x /opt/dcdn/dcdnd

sudo systemctl daemon-reload
sudo systemctl enable dcdnd
sudo systemctl restart dcdnd

echo "✅ Update Complete!"
