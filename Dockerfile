FROM python:3.5
LABEL maintainer "marcus.rickert@accso.de"

RUN apt-get update && \
    LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes --no-install-recommends \
         python3 \
         python3-pip \
	 python3-dev \
	 python3-wheel \
	 libxml2-dev \
 	 libxslt1-dev \
	 postgresql-client \
 	 libpq-dev \
	 git \
	 gcc \
	 g++ \
         apt-utils \
         curl \
	 wget \
	 expect \
         unzip && \
    LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get clean && \
    pip3 install coverage
    
