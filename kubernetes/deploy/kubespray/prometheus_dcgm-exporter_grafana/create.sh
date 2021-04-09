#!/bin/bash
sudo kubectl create -f dcgm-exporter-deployment.yaml
sudo kubectl create -f node-exporter-deployment.yaml

sudo kubectl create -f cluster-role-binding.yaml
sudo kubectl create -f cluster-role.yaml
sudo kubectl create -f deployment.yaml
sudo kubectl create -f service-account.yaml
sudo kubectl create -f service.yaml

sudo kubectl create -f prometheus-cluster-role.yaml
sudo kubectl create -f prometheus-config-map.yaml
sudo kubectl create -f prometheus-deployment.yaml

sudo kubectl create -f grafana-deployment.yaml
