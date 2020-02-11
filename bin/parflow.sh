#!/bin/bash

if docker ps >& /dev/null
then
   docker run --rm -v $(pwd):/data jswilley5/parflow-test $*
elif singularity version >& /dev/null
then
   singularity run docker://jswilley5/parflow-test $*
else
   echo "Couldn't run docker or singularity"
fi
