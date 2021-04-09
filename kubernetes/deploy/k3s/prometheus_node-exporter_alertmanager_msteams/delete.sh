#!/bin/bash
#node-exporter
sudo kubectl delete -f node-exporter-deployment.yaml

#kube-state-metrics
sudo kubectl delete -f cluster-role-binding.yaml
sudo kubectl delete -f cluster-role.yaml
sudo kubectl delete -f deployment.yaml
sudo kubectl delete -f service-account.yaml
sudo kubectl delete -f service.yaml

#prometheus
sudo kubectl delete -f prometheus-cluster-role.yaml
sudo kubectl delete -f prometheus-config-map.yaml
sudo kubectl delete -f prometheus-deployment.yaml

#grafana
sudo kubectl delete -f grafana-deployment.yaml

#alertmanager
sudo kubectl delete -f AlertmanagerConfigmap.yaml
sudo kubectl delete -f AlertmanagerDeployment.yaml
sudo kubectl delete -f AlerttemplateConfigmap.yaml

#msteams
sudo kubectl delete -f msteams-config-map.yaml
sudo kubectl delete -f msteams-deployment.yaml
