#!/bin/bash

#REQUIREMENTS="requirements-pypi.conf"
REQUIREMENTS="requirements-all.conf"

#export http_proxy=http://user:password@IP_or_HOST
test "$http_proxy" != "" && export PIP_PROXY="--proxy=$http_proxy"

echo ">>> Installing dependencies from PyPI"

if true
then
  source ./env/bin/activate
  export PIP_REQUIRE_VIRTUALENV=true
  PIP=./env/bin/pip
else
  PIP="sudo pip"
fi

mkdir -p ./logs
#mkdir -p ./pip-cache
$PIP install -U --requirement="$REQUIREMENTS" $PIP_PROXY
#               --download-cache=pip-cache \
#               --log=./logs/build_pip_packages.log

