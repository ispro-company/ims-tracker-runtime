[![Latest Release](http://github-release-version.herokuapp.com/github/isprocompany/ims-tracker-runtime/release.svg)](https://github.com/isprocompany/ims-tracker-runtime/releases/latest)
[![Build Status](https://travis-ci.org/isprocompany/ims-tracker-runtime.svg?branch=master)](https://travis-ci.org/isprocompany/ims-tracker-runtime)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/b008f8665fed427291a26d25c2fc9433)](https://www.codacy.com/app/groundnuty/ims-tracker-runtime?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=isprocompany/ims-tracker-runtime&amp;utm_campaign=Badge_Grade)
[![Latest Docker Yag](https://images.microbadger.com/badges/version/isprocompany/ims-tracker-runtime.svg)](https://microbadger.com/images/isprocompany/ims-tracker-runtime "Get your own version badge on microbadger.com")
[![Latest Docker Tag Details](https://images.microbadger.com/badges/image/isprocompany/ims-tracker-runtime.svg)](https://microbadger.com/images/isprocompany/ims-tracker-runtime "Get your own image badge on microbadger.com")
[![Docker Pulls](https://img.shields.io/docker/pulls/isprocompany/ims-tracker-runtime.svg)](https://hub.docker.com/r/isprocompany/ims-tracker-runtime/)

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