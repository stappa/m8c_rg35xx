#!/bin/bash

TOOLCHAIN="aveferrum/rg35xx-batocera-toolchain:v0.5"
PACKAGE_DIR="package"

if [ -z "$(docker images -q $TOOLCHAIN 2> /dev/null)" ]; then
  docker pull $TOOLCHAIN
fi

./modify_makefile.py > ./m8c/Makefile.temp

docker run -it --rm \
  -v $(pwd):/root/workspace \
  --workdir /root/workspace \
  $TOOLCHAIN \
  /bin/bash -c "source ~/.bashrc && make -C m8c -f Makefile.temp"

mkdir -p $PACKAGE_DIR
cp -r config imgs lib modules scripts $PACKAGE_DIR
cp m8c/m8c README.md $PACKAGE_DIR
