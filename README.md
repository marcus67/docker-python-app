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

## Preinstalled PIP packages

* jinja2
* coverage
* selenium
* codecov
* babel

## Support for Selenium Tests

The container has Google Chrome 71 and the matchting Chrome Web Driver 2.46 preinstalled to enable Selenimum tests.
