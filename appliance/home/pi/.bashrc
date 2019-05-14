
read -p "Set username for protected files: " USERNAME
read -p "Enter password: " -s PASSWORD

sudo htpasswd -b -c /var/www/passwd $USERNAME $PASSWORD
sudo adduser $USERNAME -p $PASSWORD sudo

sudo deluser -f pi

echo "Default user deleted. Please log in with $USERNAME"

exit 0
