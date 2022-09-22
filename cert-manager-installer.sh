#!/bin/bash

# Add Cert-Manager to Helm Repository
helm repo add jetstack https://charts.jetstack.io

# Update local Helm Repository
helm repo update

# Install CustomResourceDefinitions
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.9.1/cert-manager.crds.yaml

# Manual Cert-Manager Installation by Overwritting the default Helm Values
helm install cert-manager jetstack/cert-manager --namespace cert-manager --create-namespace --version v1.9.1 --set prometheus.enabled=false

# Verify Installation
verify_pod_deployment ()
{
  current_line=0
  counter=0

  for pod in $(kubectl get pods --namespace cert-manager | awk 'NR>1')
  do
    rem=$((current_line%5))

    if [[ $rem -eq 0 ]]; then
      ((counter++))
    fi

    ((current_line++))
  done

  if [[ $counter -eq 3 ]]; then
    echo "Succesful Deployment" 
  else
    echo "UnSuccesful Deployment"
    echo "Webhook might take longer to successfully provision than others"
  fi

  echo "Manual Verify using 'kubectl get pods --namespace cert-manager'"
}

verify_pod_deployment

# Update Helm Chart of Jetstack
helm repo update jetstack
