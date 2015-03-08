#!/bin/bash

source env/bin/activate

cd src

LOGFILE="../logs/gunicorn.log"
LOGDIR="$(dirname $LOGFILE)"
test -d "$LOGDIR" || mkdir -p $LOGDIR

NUM_WORKERS=3

USER=nobody
GROUP=nogroup

PORT=12345

# 1.
../env/bin/gunicorn basic_project.wsgi:application \
   -w $NUM_WORKERS \
   --user=$USER --group=$GROUP \
   --log-level=debug \
   --log-file=$LOGFILE \
   --bind 127.0.0.1:$PORT


# 2.
# DEPRECATED
#../env/bin/gunicorn_django -w $NUM_WORKERS \
#   --user=$USER --group=$GROUP --log-level=debug \
#   --log-file=$LOGFILE \

# 3.
#./manage.py run_gunicorn

cd -

