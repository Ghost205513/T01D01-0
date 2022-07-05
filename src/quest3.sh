#!/bin/bash

mkdir door_management_files
cd door_management_files
mkdir door_configuration
cd door_configuration

for i in {1..10}
do
    echo 1 > a$i.conf
done

cd ..
mkdir door_map
cd door_map
echo 1 > door_map_1.1
cd ..
mkdir door_logs
cd door_logs

for i in {1..23}
do
    echo 1 > a$i.log
done

cd ..
cd ..

chmod 777 ./ai_door_control.sh
bash ./ai_door_management_module.sh

