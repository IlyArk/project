#!/bin/bash

cd /etc/project/kibana

cp kibana.yml /etc/kibana/

sudo systemctl restart kibana.service
