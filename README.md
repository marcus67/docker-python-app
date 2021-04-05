# docker-python-app
Simple Docker container for testing and running Python applications based on base image `python:3.8.7`.

## Installed Debian Packages

* python3
* python3-dev
* pip3
* gcc
* apt-utils
* curl
* unzip
* openssh-client
* sshpass
* twine
* libsasl2-dev
* libldap2-dev
* libssl-dev

## Preinstalled PIP packages

* jinja2
* coverage
* selenium
* codecov
* babel

## Support for Selenium Tests

The container has Google Chrome 71 and the matching Chrome Web Driver 2.46 preinstalled to enable Selenium tests.

## Support for SonarQube

The container has the CLI tools (version 4.6.0.2311) for uploading to SonarQube installed.
