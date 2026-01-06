#!/bin/bash
aws ec2 run-instances \
  --image-id ami-05041d2cd9306c74e \
  --instance-type t2.micro \
  --key-name ec2new \
  --security-group-ids  sg-0971dc540fcd556f7 \
  --subnet-id subnet-00306a7b9d62cf50a \
  --count 2
