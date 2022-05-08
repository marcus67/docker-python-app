FROM python:3.9
LABEL maintainer = "marcus.rickert@accso.de"
ENV CHROME_BRANCH_BASE_POSITION=843831
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
         unzip \
         sshpass \
         openssh-client \
         libgtk-3-dev \
         libpulse-dev \
         libsasl2-dev \
         libldap2-dev \
         libssl-dev \
         libnss3 \
         libasound2 \
         xvfb \
         jq \
         iputils-ping \
         iptables \
         sudo && \
    pip3 install \
         wheel \
         codecov \
         coverage \
         jinja2 \
         selenium \
         twine \
         babel \
         setuptools && \
    cd /opt && \
    curl -L -s https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.0.2311-linux.zip -o /opt/sonar-scanner-cli-linux.zip && \
    unzip /opt/sonar-scanner-cli-linux.zip && \
    ln -s /opt/sonar-scanner-*-linux/bin/sonar-scanner /usr/local/bin
RUN cd /opt && \
    curl -L -s https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Linux_x64%2F${CHROME_BRANCH_BASE_POSITION}%2Fchromedriver_linux64.zip?generation=1610673102313387\&alt=media -o /opt/chromedriver.zip && \
    unzip /opt/chromedriver.zip && \
    ln -s /opt/chromedriver_linux64/chromedriver /usr/local/bin
RUN cd /opt && \
    curl -L -s https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Linux_x64%2F${CHROME_BRANCH_BASE_POSITION}%2Fchrome-linux.zip?generation=1610673097470630\&alt=media -o /opt/chrome.zip && \
    unzip /opt/chrome.zip && \
    ln -s /opt/chrome-linux/chrome /usr/local/bin
