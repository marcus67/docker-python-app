# docker-python-app
Simple Docker container for testing and running Python applications based on base image `python:3.9-slim`.

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
* libnss3
* libasound2 
* xvfb
* jq
* iputils-ping
* sudo
* iptables

## Preinstalled PIP packages

* jinja2
* coverage
* selenium
* codecov
* babel
* twine
* wheel
* install
* setuptools

## Support for Selenium Tests

The container has Google Chrome 89 (89.0.4389.114) and the matching Chrome Web Driver preinstalled to enable 
Selenium tests. See https://omahaproxy.appspot.com/.

## Support for SonarQube

The container has the CLI tools (version 4.6.0.2311) for uploading to SonarQube installed.

## Updating the Chromium base position

See [here](https://omahaproxy.appspot.com/) to obtain the base position.
