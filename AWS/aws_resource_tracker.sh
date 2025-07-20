#!/bin/bash
#
#################
# Author: Pritam Mane
#  Date : 21/06/2025
#  version : v1
#
#  This script wiil report the AWS resource usage.
###################################################

set -x
#list s3 buckets 
echo "Print list of S3 buckets"
aws s3 ls >> resourceTracker.txt

#list ec2 instance
echo "Print list of EC2 instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker.txt

#list the lambda functions
echo "Print list of lambda functions"
aws lambda list-functions >> resourceTracker.txt

#list IAM users
echo "Print list of IAm users"
aws iam list-users >> resourceTracker.txt

########################################
