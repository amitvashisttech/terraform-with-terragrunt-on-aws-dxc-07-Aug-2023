# Terraform with AWS Cloud 

## Please follow the below steps to configure Terraform

## 1. Install Terraform 
```
git clone https://github.com/amitvashisttech/terraform-with-terragrunt-on-aws-dxc-07-Aug-2023.git
cd terraform-with-terragrunt-on-aws-dxc-07-Aug-2023/
```

```
sh 00-Install-Terraform/terraform-bootstrap.sh
```

```
terraform --version 
```

## 2. Setup an AWS Credentials ( Access Keys ) 

## Step1 : Login to AWS Portal with Provided Credetials 
## Step2 : Search for IAM Service -> Select User -> Select Your User -> Security Credentails -> Create Key -> Options as Others -> Gernrate Key [Please make a note of Access Key & Secret for later usage. ]

## Step3 : Login to Terraform Instance / Linux VM. 
## Step4 : Export the AWS Access Key & Secret 
```
echo "export AWS_ACCESS_KEY_ID="XXXXXXXXXXXXXXXXXX" " >> ~/.bashrc
echo "export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXYYYYYYYYYYYYYY" " >> ~/.bashrc
```

```
source  ~/.bashrc
```

## Step5 : Check the exported credetials 
```
set | grep -i AWS 
``` 
