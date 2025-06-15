#!/bin/bash -x

mkdir -p terraform
#
# Modules
#
mkdir -p terraform/modules

# IAM
mkdir -p terraform/modules/iam
mkdir -p terraform/modules/iam/role_policies
mkdir -p terraform/modules/iam/roles

# Network
mkdir -p terraform/modules/network
mkdir -p terraform/modules/network/vpc
mkdir -p terraform/modules/network/subnets
mkdir -p terraform/modules/network/routes
mkdir -p terraform/modules/network/interface_endpoints
mkdir -p terraform/modules/network/transit_gateway
mkdir -p terraform/modules/network/security_groups

# Compute
mkdir -p terraform/modules/compute
mkdir -p terraform/modules/compute/ec2
mkdir -p terraform/modules/compute/eks
mkdir -p terraform/modules/compute/ecs
mkdir -p terraform/modules/compute/ecr

# Storage
mkdir -p terraform/modules/storage
mkdir -p terraform/modules/storage/s3
mkdir -p terraform/modules/storage/backup

# Database
mkdir -p terraform/modules/database
mkdir -p terraform/modules/database/rds
mkdir -p terraform/modules/database/dynamodb

#
# Environments
#
mkdir -p terraform/envs
mkdir -p terraform/envs/backup
mkdir -p terraform/envs/cicd
mkdir -p terraform/envs/iba
mkdir -p terraform/envs/logs
mkdir -p terraform/envs/network
mkdir -p terraform/envs/security
mkdir -p terraform/envs/shared-prod
mkdir -p terraform/envs/shared-test
mkdir -p terraform/envs/workspaces

#
# Global
#
mkdir -p terraform/global

