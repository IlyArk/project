#!/bin/bash

cd /home/source/system-up/elk-config-files

sudo cp filebeat.yml /etc/filebeat/

sudo systemctl restart filebeat
