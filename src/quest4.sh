#!/bin/bash

kill $(ps aux | grep ai_door_control.sh | tr -s ' '| cut -d ' ' -f 2)

