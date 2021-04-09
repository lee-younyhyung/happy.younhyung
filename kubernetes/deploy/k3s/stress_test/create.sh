#!/bin/bash
sudo kubectl create -f ubuntu.yaml

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

sudo kubectl create -f AlertmanagerConfigmap.yaml
sudo kubectl create -f AlertmanagerDeployment.yaml
sudo kubectl create -f AlerttemplateConfigmap.yaml

#sudo kubectl create -f msteams-deployment.yaml
