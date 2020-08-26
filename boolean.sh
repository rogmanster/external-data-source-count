#!/bin/bash
boolean=$(cat boolean.txt)

if [ $boolean = "true" ]
then
  echo "{\"boolean\": \"true\"}"
else
  echo "{\"boolean\": \"false\"}"
fi
