#!/bin/bash

source env/bin/activate

cd src

rsync -va djangobb_forum/media/* static_content/media

./manage.py collectstatic

cd -

