#!/bin/bash
#node-exporter
sudo kubectl create -f node-exporter-deployment.yaml

#kube-state-metrics
sudo kubectl create -f cluster-role-binding.yaml
sudo kubectl create -f cluster-role.yaml
sudo kubectl create -f deployment.yaml
sudo kubectl create -f service-account.yaml
sudo kubectl create -f service.yaml

#prometheus
sudo kubectl create -f prometheus-cluster-role.yaml
sudo kubectl create -f prometheus-config-map.yaml
sudo kubectl create -f prometheus-deployment.yaml

#grafana
sudo kubectl create -f grafana-deployment.yaml

#alertmanager
sudo kubectl create -f AlertmanagerConfigmap.yaml
sudo kubectl create -f AlertmanagerDeployment.yaml
sudo kubectl create -f AlerttemplateConfigmap.yaml

#msteams
sudo kubectl create -f msteams-config-map.yaml
sudo kubectl create -f msteams-deployment.yaml
