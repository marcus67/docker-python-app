#! /bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. ${SCRIPT_DIR}/versions.sh

for PYTHON_VERSION in ${VERSIONS} ; do
  docker push marcusrickert/docker-python-app:${PYTHON_VERSION}
done
