#!/bin/bash
srcdir=$1
dstdir=$2
N=$3
for i in "${srcdir}"/*; do
  [ "$((N--))" = 0 ] && break
  mv -t "${dstdir}" -- "$i"
done
