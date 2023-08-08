## Clean UP 
```
429  find . -iname .terraform -exec ls -ltr {} \; 
  430  find . -iname .terraform -exec rm -rf  {} \; 
  431  find . -iname .terraform -exec ls -ltr {} \;
```
