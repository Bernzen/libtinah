#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
  echo "we need the location of the arduino folder"
  exit 1
fi

arduino=$1
arduino_libs=$arduino"/libraries"
arduino_hardware=$arduino"/hardware"

echo "creating folder"  $arduino_libs
mkdir -p $arduino_libs
echo "creating folder"  $arduino_hardware
mkdir -p $arduino_hardware

cp -r libraries/* $arduino_libs
cp -r hardware/* $arduino_hardware
