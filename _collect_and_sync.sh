#!/bin/bash

source env/bin/activate

cd src

rsync -va basic_project/media/* static_content/media

./manage.py collectstatic

#./manage.py syncdb  # Django<1.7

#./manage.py migrate # Django>=1.7 ???

cd -

