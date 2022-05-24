#!/bin/bash

#1. Below cmd first check deploy exist or not and save output in cmdout.txt file
kubectl get deploy &> cmdout.txt

#2. Below cmd compare both files and they match exactly when deploy does not exist and they create deploy and svc both if deploy already exists they release the new version
diff match.txt cmdout.txt &> /dev/null && kubectl create deploy myd --image=buddhi82/intern:latest;kubectl expose deploy myd --port=80 --type=NodePort || kubectl rollout restart deployment/myd
