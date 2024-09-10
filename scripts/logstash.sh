#!/bin/bash

cd /home/slave/system-up/elk-config-files/

cp logstash-nginx-es.conf /etc/logstash/conf.d/

sudo systemctl restart logstash.service
