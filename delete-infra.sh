#!/bin/bash

STACK_NAME=awsbootstrap
REGION=eu-west-1
CLI_PROFILE=awsbootstrap

# Delete static resources
echo -e "\n\n=========== Deleting static resources ==========="
aws cloudformation delete-stack \
  --region $REGION \
  --profile $CLI_PROFILE \
  --stack-name $STACK_NAME-setup

# Delete the CloudFormation template
echo -e "\n\n=========== Deleting infrastructure ==========="
aws cloudformation delete-stack \
  --region $REGION \
  --profile $CLI_PROFILE \
  --stack-name $STACK_NAME