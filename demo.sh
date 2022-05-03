#!/bin/bash

BRANCH="Add_AWS_S3_Bucket_Config_${RANDOM}"

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
pe "code main.tf"

# Run Terraform Plan
pe "terraform plan"

# Stage the changes
pe "git add ."

# Commit the changes
pe "git commit -m 'Update AWS S3 Bucket configuration'"

# Push the changes
pe "git push origin ${BRANCH}"

# Create Pull Request
pe "gh pr create \\
--title 'Add versioning config block to AWS S3 Bucket' \\
--body 'This PR sets the versioning configuration on the AWS S3 bucket to 'true'' \\
--label 'enhancement'"