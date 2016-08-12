#!/bin/bash

file="ceshi.yaml"

if grep -q '[^ -~]\+' $file; then
  echo "hehe"
fi
