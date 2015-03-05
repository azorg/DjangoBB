#!/bin/bash

dir="./src"

echo ">>> Clean *.pyc"
find "$dir" -name "*.pyc" | while read f
do
  echo rm "$f"
  rm "$f"
done


