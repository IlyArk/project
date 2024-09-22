#!/bin/bash

cd /etc/project/prometheus

sudo cp prometheus.yml /etc/prometheus/

sudo systemctl restart prometheus
sudo systemctl restart grafana-server
