#! /bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. ${SCRIPT_DIR}/versions.sh

for PYTHON_VERSION in ${VERSIONS} ; do
  docker build -t marcusrickert/docker-python-app:${PYTHON_VERSION} --build-arg PYTHON_VERSION=${PYTHON_VERSION} . $*
done
