#!/bin/bash

if [ "$ENTRYPOINT" = "app" ]
then
  bundle exec rake db:migrate
  bundle exec rails s
elif [ "$ENTRYPOINT" = "test" ]
then
  #bundle exec rake db:migrate
  bundle exec rails s
  exit 0 
fi
