# Resouce Movement between terraform state files. 

### Before : In the source dir we have 3 SGs in Exp1 Dir & 1 SG in Exp2 Folder
```
[amitvashist@ip-172-31-14-237 Exp1]$ terraform state list 
aws_security_group.demo-sg[0]
aws_security_group.demo-sg[1]
aws_security_group.demo-sg[2]
[amitvashist@ip-172-31-14-237 Exp1]$ 
```

```
[amitvashist@ip-172-31-14-237 Exp2]$ terraform state list 
aws_security_group.new-sg[0]
[amitvashist@ip-172-31-14-237 Exp2]$
```

### Now we would like to move SG 2 "aws_security_group.demo-sg[1]" from Exp1 State file to Exp2 State file with new name "aws_security_group.new-sg[1]"

### Go the Source Folder from where you want to move the resource in our case that is Exp1.

```
cd Exp1 
```

### Let's run the move command. 
```
terraform mv -state-out=../Exp2/terraform.tfstate aws_security_group.demo-sg[1] "aws_security_group.new-sg[1]"

Move "aws_security_group.demo-sg[1]" to "aws_security_group.new-sg[1]"
Successfully moved 1 object(s).
```

### Lets check the status after move on both Exp Folders. 
```
[amitvashist@ip-172-31-14-237 Exp1]$ terraform state list 
aws_security_group.demo-sg[0]
aws_security_group.demo-sg[2]
[amitvashist@ip-172-31-14-237 Exp1]$ 
```

```
[amitvashist@ip-172-31-14-237 Exp2]$ terraform state list 
aws_security_group.new-sg[0]
aws_security_group.new-sg[1]
[amitvashist@ip-172-31-14-237 Exp2]$
```


## Now if run the terraform apply or plan, terraform will find a drift, which we can see in the below  outputs. 

```
[amitvashist@ip-172-31-14-237 Exp1]$ 
Plan: 1 to add, 0 to change, 0 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform
apply" now.
[amitvashist@ip-172-31-14-237 Exp1]$ 
```



```
[amitvashist@ip-172-31-14-237 Exp2]$ 
Plan: 0 to add, 0 to change, 1 to destroy.

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform
apply" now.
[amitvashist@ip-172-31-14-237 Exp2]$ 
```


### In order to keep the changes post terraform mv, we need to update the main.tf in both Exp folder respectivily to adapt the changes. 
