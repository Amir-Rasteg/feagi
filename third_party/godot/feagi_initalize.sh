#!/bin/bash

FILE=./csv_data.csv
python3 bridge_godot_python.py &
cd ../html
ls
echo "---------------- +++ -----------------"
while  [ ! -f "$FILE" ]; do
  sleep 5
done
http-server