#!/bin/bash

IPs=("10.0.4.82" "10.0.4.83" "10.0.4.84" "10.0.4.85")

for IP in "${IPs[@]}"; do 
  LSPCI_RESULT=$(ssh "$IP" "rm -rf /mnt/influxdb")
done