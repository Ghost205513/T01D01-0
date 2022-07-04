#!/bin/bash

mv door_management_fi door_management_files
cd door_management_files

mkdir door_configuration
mkdir door_map
mkdir door_logs

for i in {1..16}
do
    mv ./door_$i.conf ./door_configuration/
    mv ./door_$i.log ./door_logs/
done

mv ./door_map_1.1 ./door_map/
mv ./door_21.conf ./door_configuration/

cd ..

chmod 777 ./ai_door_control.sh
bash ./ai_door_management_module.sh
