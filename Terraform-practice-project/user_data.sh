# Update repos and packages
sudo apt update && sudo apt upgrade -y

# Install Nginx
sudo apt install nginx -y

# Enable Nginx service
sudo systemctl enable nginx

# Create new webpage and update index.html
echo "<h1>Hello from Webserver 1 !!</h1>" | sudo tee /var/www/html/index.html

# Restart Nginx
sudo systemctl restart nginx