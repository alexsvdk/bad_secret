#!/bin/bash

type=$1
watchType="watch"
cmd=""

if [ "$type" = "$watchType" ]; then
  echo "Watching codegen"
  cmd="fvm flutter pub run build_runner watch --delete-conflicting-outputs --verbose"
else
  echo "Building codegen"
  cmd="fvm flutter pub run build_runner build --delete-conflicting-outputs --verbose"
fi


$cmd
status=$?
if [ $status -eq 65 ]; then
  echo "Trying to fix with pub get"
  fvm flutter pub get || exit$? 
  $cmd
  status=$?
fi

exit $status