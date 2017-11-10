#!/usr/bin/env bash

docker-compose -f docker-compose.yml -f docker-compose.new-build.yml run --rm --service-ports web bash -c "Dockers/wait-for db:5432 && Dockers/wait-for es:9200 && coverage run manage.py search_index create && python manage.py search_index autoalias && python manage.py test --with-coverage --cover-erase --cover-package=lily"
