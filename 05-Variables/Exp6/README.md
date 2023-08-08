```
  487  vim uat.tfvars
  488  ls
  489  terraform plan -var-file=uat.tfvars 
  490  ls
  491  cp -rf uat.tfvars prod.tfvars
  492  ls
  493  vim prod.tfvars 
  494  terraform plan -var-file=prod.tfvars 
```
