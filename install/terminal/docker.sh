# Install Docker engine and standard plugins
sudo dnf install -y moby-engine containerd docker-buildx docker-cli docker-compose docker-compose-switch

# Give this user privileged Docker access
sudo usermod -aG docker ${USER}

# Limit log size to avoid running out of disk
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json
