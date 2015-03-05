#!/bin/bash

echo ">>> Installing dependencies from source"

source ./env/bin/activate

list=`cat <<EOF
  linaro-django-pagination-git
  django-mailer-git
  django-messages-git
  django-authopenid-hg
  django-grappelli-git
  django-mptt-git
  django-social-auth-git
  django-wymeditor-git
  tweepy-git
EOF`

for i in $list
do
  echo ">>> install $i ..."
  cd "clones/$i"
  python setup.py install || exit
  echo ">>> $i installed OK"
  
  #echo ">>> press enter to continue..."
  #read a
  cd -
done

