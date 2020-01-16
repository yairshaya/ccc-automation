#!/bin/bash

cat > /home/yairs/Local-GIT/ccc-automation/terraform.tfvars <<EOL
User_HostName = "$1"
WebCIDR_Block = "10.0.1.0/24"
PublicCIDR_Block = "10.0.0.0/24"
VPCName = "vv-2t-vpc"
StackName = "vv-2t"
VPCCIDR = "10.0.0.0/16"
ServerKeyName = "yair"
EOL

### commit the changes to GitHub
git add .
commit="New commit to deploy env for user: $1";
#read -p "New commit to deploy env for user: $1"
git commit -m "${commit}"
git push
