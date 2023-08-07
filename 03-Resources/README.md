  ```
  156  terraform apply --auto-approve 
  157  terraform apply -target aws_instance.front[0]
  158  terraform destroy -target aws_instance.front[0]
  159  terraform destroy -target aws_instance.back[0]
  160  terraform destroy --auto-approve 

  ```