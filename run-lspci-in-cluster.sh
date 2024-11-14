#!/bin/bash

NODES=($(kubectl get nodes -l layer=storage -o wide --no-headers | awk '{print $1}'))

OUTPUT_FILE="./deployments/lspci-result.txt"
> $OUTPUT_FILE 

for NODE in "${NODES[@]}"; do
  echo "Checking NGD devices on $NODE..."
  
  LSPCI_RESULT=$(ssh "$NODE" "lspci | grep NGD | wc -l")
  
  echo "$NODE $LSPCI_RESULT" >> $OUTPUT_FILE
done

echo "All results have been saved to $OUTPUT_FILE"