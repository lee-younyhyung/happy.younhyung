#!/bin/bash
sudo kubectl delete -f node-exporter-deployment.yaml

sudo kubectl delete -f cluster-role-binding.yaml
sudo kubectl delete -f cluster-role.yaml
sudo kubectl delete -f deployment.yaml
sudo kubectl delete -f service-account.yaml
sudo kubectl delete -f service.yaml

sudo kubectl delete -f prometheus-cluster-role.yaml
sudo kubectl delete -f prometheus-config-map.yaml
sudo kubectl delete -f prometheus-deployment.yaml
