if [[ $WEBDRIVER == "chrome_driver" ]]
then
    cd ~/src
    echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' > /etc/apt/sources.list.d/google-chrome.list
    apt-get update
    apt-get install google-chrome-stable
    wget http://chromedriver.storage.googleapis.com/2.8/chromedriver_linux64.zip
    unzip chromedriver_linux64.zip
    nohup /./$HOME/src/chromedriver &
    echo "Running with ChromeDriver..."
elif [[ $WEBDRIVER == "phantomjs" ]]
then
    nohup phantomjs -w &
    echo "Running with PhantomJs..."
elif [[ $WEBDRIVER == "selenium" ]]
then
  cd ~/src
  wget https://selenium.googlecode.com/files/selenium-server-standalone-2.39.0.jar
  nohup java -jar selenium-server-standalone-2.39.0.jar &
  echo "Running with Selenium..."
fi
