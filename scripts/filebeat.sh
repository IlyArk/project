#!/bin/bash

cd /etc/project/fileb

sudo cp filebeat.yml /etc/filebeat/

sudo systemctl restart filebeat
