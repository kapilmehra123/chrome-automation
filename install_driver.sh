# Download and Install chromedriver
wget https://chromedriver.storage.googleapis.com/123.0.6312.86/chromedriver_linux64.zip 
unzip chromedriver_linux64.zip 
sudo mv chromedriver /usr/bin/chromedriver 
sudo chown root:root /usr/bin/chromedriver 
sudo chmod +x /usr/bin/chromedriver 


# Install chrome broswer
sudo curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add 
sudo bash -c "echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' >> /etc/apt/sources.list.d/google-chrome.list" 
sudo apt -y update 
sudo apt -y install google-chrome-stable 
google-chrome --version 
