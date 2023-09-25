#!/bin/bash
#
# Kind Cluster Deployment
# Author: John Kennedy

# Define the variables
cluster_name="cluster1"
cluster_config="multi-node-config.yaml"


# Create the KinD cluster with the control plane name
kind create cluster --name="$cluster_name" --config="$cluster_config"

# Check if the KinD cluster was created successfully
if [ $? -eq 0 ]; then
    # Obtain the path to the kubeconfig file generated by KinD
    kubeconfig_path=$(kind get kubeconfig --name="$cluster_name")

    # Check if the kubeconfig file exists
    if [ -f "$kubeconfig_path" ]; then
        # Create a directory for Kubernetes configuration files if it doesn't exist
        mkdir -p ~/.kube

        # Copy the kubeconfig file to the default Kubernetes configuration location
        cp "$kubeconfig_path" ~/.kube/config

        # Display a message to inform the user about the successful setup
        echo "KinD cluster created, and kubeconfig file has been copied to ~/.kube/config"
    fi
else
    echo "Error: Failed to create KinD cluster."
fi