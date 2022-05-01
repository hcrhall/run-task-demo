#!/bin/bash

########################
# include the magic
########################
. ./demo-magic/demo-magic.sh

# hide the evidence
clear

# Run Terraform Plan
pe "terraform plan"

# Change Configuration
pe "code aws_lambda_function.tf"

# Run Terraform Plan
pe "terraform plan"

# Stage the changes
pe "git add ."

# Commit the changes
pe "git commit -m Update AWS Lambda tracing configuration"

# Push the changes
pe "git push origin main"