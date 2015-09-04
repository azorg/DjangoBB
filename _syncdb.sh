#!/bin/bash

source env/bin/activate

cd src

./manage.py syncdb  # Django<1.7

#./manage.py migrate # Django>=1.7 ???

cd -

