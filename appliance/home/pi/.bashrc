
read -p "Set username for protected files: " USERNAME
read -p "Enter password: " -s PASSWORD

sudo htpasswd -b -c /var/www/passwd $USERNAME $PASSWORD
useradd -p $(openssl passwd -1 $PASSWORD) -G sudo $USERNAME

sudo deluser -f pi

echo "Default user deleted. Please log in with $USERNAME"

exit 0
