#!/usr/bin/env bash

docker-compose -f docker-compose.yml -f docker-compose.new-build.yml run --rm --service-ports web python manage.py test --with-coverage --cover-erase --cover-package=lily
