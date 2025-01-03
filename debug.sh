#!/bin/bash

if [ "$1" == "i" ] ; then   
    while [ -z $PODNAME ]
    do
        PODNAME=`kubectl get po -o=name -A --field-selector=status.phase=Running | grep csd-identifier`
        PODNAME="${PODNAME:4}"
    done
    kubectl logs $PODNAME -n storage-controller -f 
elif [ "$1" == "l" ] ; then  
    while [ -z $PODNAME ]
    do
        PODNAME=`kubectl get po -o=name -A --field-selector=status.phase=Running | grep lba2pba-manager`
        PODNAME="${PODNAME:4}"
    done
    kubectl logs $PODNAME -n storage-controller -f 
elif [ "$1" == "s" ] ; then  
    while [ -z $PODNAME ]
    do
        PODNAME=`kubectl get po -o=name -A --field-selector=status.phase=Running | grep opencsd-storage-manager`
        PODNAME="${PODNAME:4}"
    done
    kubectl logs $PODNAME -n storage-controller -f 
elif [ "$1" == "a" ] ; then  
    while [ -z $PODNAME ]
    do
        PODNAME=`kubectl get po -o=name -A --field-selector=status.phase=Running | grep storage-api-server`
        PODNAME="${PODNAME:4}"
    done
    kubectl logs $PODNAME -n storage-controller -f 
else 
    echo arg error
fi