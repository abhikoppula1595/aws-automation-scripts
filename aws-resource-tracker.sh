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
set -e # it exit the script when there is error
set -o pipefail


# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls


# List ec2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List Lambda
echo "print list of lambda functions"
aws lambda list-functions

# List IAM Users
echo "print list of iam users"
aws iam list-users
