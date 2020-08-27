#! /bin/sh
hugo new site test
cd test
hugo -D
cd ..
md5sum -c checksum.md5 && exit 0 || exit 1
