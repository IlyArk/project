#!/bin/bash

cd /etc/project/ELK

cp jvm.options /etc/elasticsearch/jvm.options.d/
cp elasticsearch.yml /etc/elasticsearch/

sudo systemctl restart elasticsearch.service
