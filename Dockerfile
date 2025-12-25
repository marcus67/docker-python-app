ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}
LABEL maintainer="marcus.rickert@accso.de"
RUN apt-get update && \
    LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --force-yes --no-install-recommends \
         chromium \
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
RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
ENV ASDF_DIR=/root/.asdf
ENV PATH=${PATH}:${ASDF_DIR}/bin:${ASDF_DIR}/shims
RUN echo PATH=${PATH}
RUN . /root/.asdf/asdf.sh
RUN asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
RUN asdf plugin-list
ARG NODE_JS_VERSION=20.15.0
#RUN ${ASDF_DIR}/plugins/nodejs/bin/import-release-team-keyring
RUN asdf install nodejs ${NODE_JS_VERSION}
RUN echo "nodejs ${NODE_JS_VERSION}" > ~/.tool-versions
