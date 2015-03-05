#!/bin/bash

source env/bin/activate

cd src
./manage.py send_mail
./manage.py retry_deferred
cd -

