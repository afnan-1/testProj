#!/usr/bin/env bash

# kill any servers that may be running in the background 
# sudo pkill -f runserver

# kill frontend servers if you are deploying any frontend
# sudo pkill -f tailwind
# sudo pkill -f node

cd /home/ubuntu/testProj/

# activate virtual environment
python3 -m venv env
source env/bin/activate

# install requirements.txt
pip install -r /home/ubuntu/testProj/requirements.txt

# run server
python manage.py migrate
sudo supervisorctl restart all
# screen -d -m python3 manage.py runserver 0:8000