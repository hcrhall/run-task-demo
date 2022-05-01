#!/bin/bash

BRANCH="Add_AWS_Lambda_Function_Tracing_Config_${RANDOM}"

########################
# include the magic
########################
. ./demo-magic/demo-magic.sh

# hide the evidence
clear

# Run Terraform Plan
pe "terraform plan"

# Create Branch
pe "git checkout -b ${BRANCH}"

# Change Configuration
pe "code aws_lambda_function.tf"

# Run Terraform Plan
pe "terraform plan"

# Stage the changes
pe "git add ."

# Commit the changes
pe "git commit -m 'Update AWS Lambda tracing configuration'"

# Push the changes
pe "git push origin ${BRANCH}"

# Create Pull Request
pe "gh pr create \\
--title 'Add Tracing Configuration to Lambda Function' \\
--body 'This PR sets the tracing configuration mode on the hello_world AWS lambda function to 'PassThrough'' \\
--label 'enhancement'"