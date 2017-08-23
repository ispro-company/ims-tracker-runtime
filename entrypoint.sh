#!/bin/bash

cd ims-tracker

# Default for value
if [[ "$GRAILS_PORT" == "" ]] ; then
  GRAILS_PORT=8080
fi

if [[ "$GRAILS_ENV" == "" ]] ; then 
  echo "Running application using default grails environment"
  grails -Dserver.port=$GRAILS_PORT run-app
else
  echo "Running application using $GRAILS_ENV grails environment"
  grails -Dserver.port=$GRAILS_PORT $GRAILS_ENV run-app
fi

