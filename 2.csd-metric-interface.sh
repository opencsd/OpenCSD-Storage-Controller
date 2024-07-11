#!/usr/bin/env bash
dir=$( pwd )

#$1 create/c or delete/d

if [ "$1" == "delete" ] || [ "$1" == "d" ]; then   
    echo kubectl delete -f deployments/csd-metric-interface.yaml
    kubectl delete -f deployments/csd-metric-interface.yaml
else
    echo kubectl create -f deployments/csd-metric-interface.yaml
    kubectl create -f deployments/csd-metric-interface.yaml
fi