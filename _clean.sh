#!/bin/bash

#echo ">>> Clean virtual environment"
#rm -rf ./env

echo ">>> Clean logs"
rm -rf ./logs/*

#echo ">>> Remove local repositories (clones)"
#rm -rf ./clones

echo ">>> Remove get-pip.py"
rm -f get-pip.py

#echo ">>> Remove db.sqlt3"
#rm -f ./src/db.sqlt3

#echo ">>> Remove pip-cache"
#rm -f ./pip-cache

# remove *.pyc
./clean-pyc.sh

echo ">>> Remove models.dot, models.svg and models.png"
rm -rf models.dot
rm -rf models.svg
rm -rf models.png

