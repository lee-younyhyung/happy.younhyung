#!/bin/bash

sudo systemctl daemon-reload

sudo systemctl enable airflow-webserver.service
sudo systemctl enable airflow-scheduler.service

sudo systemctl start airflow-webserver.service
sudo systemctl start airflow-scheduler.service

sudo systemctl status airflow-webserver.service
sudo systemctl status airflow-scheduler.service


