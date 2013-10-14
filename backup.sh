#!/bin/bash
python ../manage.py dumpdata --indent=2 > db_bak.json
git add .
git commit -m"db backup at `date +'%Y-%m-%d %H:%M:%S'`"
git push origin master --force
