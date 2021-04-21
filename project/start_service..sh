#!/bin/sh

_PYTHON=`which python3`

chmod +x manage.py
$_PYTHON manage.py migrate
$_PYTHON manage.py updatecatalog 
$_PYTHON manage.py collectstatic --noinput
$_PYTHON manage.py runserver 0.0.0.0:8000
