# Download and Install chromedriver
wget -N https://chromedriver.storage.googleapis.com/100.0.4896.20/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
rm ~/chromedriver_linux64.zip
sudo mv -f ~/chromedriver /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver


# Download Package
wget https://dl.google.com/linux/chrome/deb/pool/main/g/google-chrome-stable/google-chrome-stable_120_amd64.deb

# Install Chrome
apt-get install -y ./google-chrome-stable_120_amd64.deb