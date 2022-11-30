#!/bin/bash

set -euo pipefail

echo "token=$(aws codeartifact get-authorization-token --domain ${DOMAIN} --domain-owner ${DOMAIN_OWNER} --region ${REGION} --query authorizationToken --output text)" >> $GITHUB_OUTPUT
echo "repo-url=$(aws codeartifact get-repository-endpoint --domain ${DOMAIN}  --domain-owner ${DOMAIN_OWNER} --repository ${REPOSITORY} --region ${REGION} --format ${TOOL} --query repositoryEndpoint --output text)"  >> $GITHUB_OUTPUT
