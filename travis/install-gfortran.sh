#!/bin/bash

set -ev

if [ "${TRAVIS_OS_NAME}" == "osx" ]; then
  export CGO_LDFLAGS="-L$(dirname $(find $(brew --prefix) -name libgfortran.dylib | grep -v i386))";
fi

gfortran --version
