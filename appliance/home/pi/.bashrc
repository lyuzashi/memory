
read -p "Set username for protected files: " USERNAME
read -p "Enter password: " -s PASSWORD

echo ""

sudo htpasswd -b -c /var/www/passwd $USERNAME $PASSWORD
sudo useradd -p $(openssl passwd -1 $PASSWORD) -G sudo,www-data -m -s /bin/bash $USERNAME

sudo touch /boot/pi-delete.waiting

echo "Default will be deleted after reboot. Please log in with $USERNAME"

sudo reboot
exit 0
