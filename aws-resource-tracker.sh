#!/bin/bash
#############################
# Author : Abhyudhay
# Date: 01/09/2026
# Version : v1
#
# This script will report the aws resource usage
#
# ############################
# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


set -x #run script in debug mode
set -e #
set -o pipefail


# list s3 buckets
aws s3 ls

# List ec2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List IAM Users
aws iam list-users

