#!/usr/bin/env bash

apt install software-properties-common
add-apt-repository ppa:webupd8team/java
apt-get update
apt-get install oracle-java8-installer

echo export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre >> /etc/profile.d/java.sh
echo export PATH=\${JAVA_HOME}/bin:\${PATH} >> /etc/profile.d/java.sh

apt install openjdk-8-jdk-headless

apt-get install -y apache2
apt install -y maven

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

apt-get -y install libpq-dev
apt-get -y install python-pip
pip install --upgrade pip
pip install Flask
pip install pyexcel-io
pip install flask-bootstrap
pip install cookiecutter

apt-get install -y nodejs
apt-get -y install npm
npm install -g bower
ln -s /usr/bin/nodejs /usr/bin/node


# cd /vagrant/
# cookiecutter https://github.com/sloria/cookiecutter-flask.git

cd /vagrant/annobi

export ANNOBI_SECRET='something-really-secret'
export FLASK_APP=/vagrant/annobi/autoapp.py
export FLASK_DEBUG=1

pip install -r requirements/dev.txt
bower install