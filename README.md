# Runtime environment for ims-tracker

This repository provides runtime environment for building and running ims-tracker application.

## Requirements

- Docker >= 17.06
- GNU Make >=3 3.81
- postgress database running on localhost:5432 with pre-loaded ims-tracker database

> for deployment without database requirment please see [this](https://github.com/isprocompany/ims-tracker-deployment) repository

## Using

~~~
# Example flow
cd /home/ubuntu/
mkdir deploy
cd /home/ubuntu/deploy

# Clone the sources
git clone git clone git@bitbucket.org:ispro_company/ims-tracker-mobile.git

# For sad reasons here you need to supply the path to a dir containing ims-tracker dir with a repo,
# not path to sources
export IMS_TRACKER_ROOT=/home/ubuntu/deploy

# Run ims-tracker on port 8080 with grails env set to test 
docker run -d --net=host -v $IMS_TRACKER_ROOT:/usr/local/grails238 -e GRAILS_ENV=test -e GRAILS_PORT=8080 isprocompany/ims-tracker-runtime
~~~