#!/usr/bin/env bash
dir=$( pwd )

#$1 create/c or delete/d

if [ "$1" == "delete" ] || [ "$1" == "d" ]; then   
    echo kubectl delete -f deployments/storage-manager.yaml
    kubectl delete -f deployments/storage-manager.yaml
else
    echo kubectl create -f deployments/storage-manager.yaml
    kubectl create -f deployments/storage-manager.yaml
fi