#!/bin/bash

source env/bin/activate
cd src
#python manage.py graph_models -e -a -g -o ../models.png
 python manage.py graph_models -e -a -g > ../models.dot && ok=true
cd -
dot -Tsvg models.dot > models.svg
rm -f models.dot

test -n $ok && firefox models.svg


