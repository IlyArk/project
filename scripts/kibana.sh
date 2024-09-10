#!/bin/bash

cd /home/slave/system-up/elk-config-files/

cp kibana.yml /etc/kibana/

sudo systemctl restart kibana.service
