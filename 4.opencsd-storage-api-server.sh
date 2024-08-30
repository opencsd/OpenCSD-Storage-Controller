#!/usr/bin/env bash
dir=$( pwd )

#$1 create/c or delete/d

if [ "$1" == "delete" ] || [ "$1" == "d" ]; then   
    echo kubectl delete -f deployments/opencsd-storage-api-server.yaml
    kubectl delete -f deployments/opencsd-storage-api-server.yaml
else
    echo kubectl create -f deployments/opencsd-storage-api-server.yaml
    kubectl create -f deployments/opencsd-storage-api-server.yaml
fi