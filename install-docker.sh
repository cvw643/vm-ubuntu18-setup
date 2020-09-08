sudo apt update
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl status docker
sudo systemctl start docker
sudo usermod -aG docker ${USER}

sudo apt install -y docker-compose
