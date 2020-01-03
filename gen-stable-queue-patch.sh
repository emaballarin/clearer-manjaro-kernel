#!/bin/bash
source PKGBUILD

if [ -d stable-queue ] ;
then
  cd stable-queue
  git pull
  cd ..
else
  git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/stable-queue.git
fi

if [ -d stable-queue/queue-$_basekernel ] ;
then
  cd stable-queue/queue-$_basekernel
  echo "" > ../../prepatch-$_basekernel.patch
  for i in $(cat ./series); 
  do 
     cat $i >> ../../prepatch-$_basekernel.patch; 
  done
else
  echo "There is no patch-set this time"
fi
