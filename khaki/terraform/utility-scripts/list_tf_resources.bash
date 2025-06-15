#!/bin/bash
ENV=$1

if [ -z "$ENV" ]; then
    echo "Usage: $0 <environment>"
    echo "Environment can be one of backup, cicd, iba, logs, network, security, prod or test"
    exit 1
fi
ENV_DIR=../envs/msc-${ENV}
cd ${ENV_DIR} || { echo "Directory ${ENV_DIR} does not exist."; exit 1; }

# Check if Terraform is installed
if ! command -v terraform &> /dev/null; then
    echo "Terraform CLI not found. Please install Terraform."
    exit 1
fi

echo "Fetching list of resources in the current Terraform state..."
echo

# Get list of all resources
RESOURCE_LIST=$(terraform state list)

if [ -z "$RESOURCE_LIST" ]; then
    echo "No resources found in the current state."
    exit 0
fi

for RESOURCE in ${RESOURCE_LIST}; do
    RESOURCE_TYPE=$(echo "$RESOURCE" | cut -d '.' -f 1)
    RESOURCE_NAME=$(echo "$RESOURCE" | cut -d '.' -f 2)

    # Get the resource details
    RESOURCE_DETAILS=$(terraform state show "$RESOURCE")
    #printf "%-30s %-30s\n" ${RESOURCE_TYPE} ${RESOURCE_NAME}
    echo "Resource Type: $RESOURCE_TYPE"
    echo "Resource Name: $RESOURCE_NAME"
    echo "Resource Details:"
    echo "$RESOURCE_DETAILS"
    echo "----------------------------------------------------------------------"
done