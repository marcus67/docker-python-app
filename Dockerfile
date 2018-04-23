FROM python:3.5
LABEL maintainer "marcus.rickert@accso.de"

# Install missing Debian packages which are required by the Xray installation script
RUN apt-get update && \
    LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes --no-install-recommends \
         python3 \
         python3-pip \
	 python3-dev \
	 python3-coverage \
	 python3-wheel \
	 libxml2-dev \
 	 libxslt1-dev \
	 git \
	 gcc \
	 g++ \
         apt-utils \
         curl \
	 expect \
         unzip && \
    LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get clean
