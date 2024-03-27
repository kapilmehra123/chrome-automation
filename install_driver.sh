# Install the latest version of Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f

# Install the latest version of ChromeDriver
CHROME_VERSION=$(google-chrome-stable --version | grep -oE '[0-9]{2}')
LATEST_CHROMEDRIVER_VERSION=$(wget -q -O - https://chromedriver.storage.googleapis.com/LATEST_RELEASE_$CHROME_VERSION)
wget https://chromedriver.storage.googleapis.com/$LATEST_CHROMEDRIVER_VERSION/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin/

# Clean up downloaded files
rm chromedriver_linux64.zip google-chrome-stable_current_amd64.deb