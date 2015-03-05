#!/bin/bash

#export http_proxy=http://user:password@IP_or_HOST
test "$http_proxy" != "" && export PIP_PROXY="--proxy=$http_proxy" && \
                            export https_proxy=$http_proxy

echo ">>> Make dirs"
mkdir -p logs
#mkdir -p pids
#mkdir -p db
mkdir -p static_content
mkdir -p static_content/media
mkdir -p static_content/static

echo ">>> Install some ubuntu packages"
sudo apt-get install git mercurial rsync nginx supervisor \
  graphviz graphviz-dev python-pygraphviz

echo ">>> Install PIP to system"
#sudo apt-get install python-pip
test -f get-pip.py || \
  wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py $PIP_PROXY

#echo ">>> Install 'easy_install' to system (deprecated)"
#sudo apt-get install python-setuptools

echo ">>> Install virtualenv"
#sudo easy_install virtualenv
sudo pip install -U virtualenv $PIP_PROXY

echo ">>> Creating virtual environment"
virtualenv --prompt="<dj>" ./env

echo ">>> Making virtual environment relocatable"
virtualenv --relocatable ./env

