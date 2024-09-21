#!/bin/bash

cd /etc/project/log

cp logstash-nginx-es.conf /etc/logstash/conf.d/
cd
sudo systemctl restart logstash.service
