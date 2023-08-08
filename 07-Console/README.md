# terraform console
> 2 + 4 
6
> 10 - 7 
3
> 5 * 3 
15
> 30 / 5 
6
> contains(tolist(["orange", "mango", "apple"]), "kiwi") 
false
> contains(tolist(["orange", "mango", "apple"]), "apple") 
true
> 

> length("a,b,c") 
5
> length(split(",", "a,b,c")) 
3
> 

> length(tomap({"Key"="Value"})) 
1
> 

> merge(tomap({"Key"="Value"}), tomap({"Test"="ABC"})) 
tomap({
  "Key" = "Value"
  "Test" = "ABC"
})
> max(5, 17, 19) 
19
> min(5, 17, 19) 
5
> 

> timestamp()
"2023-07-05T06:31:57Z"
> 

> formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
"05 Jul 2023 06:32 UTC"
> formatdate("DD MMM YYYY", timestamp())
"05 Jul 2023"
> formatdate("DD MMM hh:mm ZZZ", timestamp())
"05 Jul 06:32 UTC"
> 

> timeadd(timestamp(), "30m")
"2023-07-05T07:03:30Z"
> timestamp()
"2023-07-05T06:33:34Z"
> timeadd(timestamp(), "30m")
"2023-07-05T07:03:36Z"
> timeadd(timestamp(), "10m")
"2023-07-05T06:43:49Z"
> 



> lookup({a="Hello Terraform", b="How are you terraform"}, "a", "please use the right key")
"Hello Terraform"
> lookup({a="Hello Terraform", b="How are you terraform"}, "b", "please use the right key")
"How are you terraform"
> lookup({a="Hello Terraform", b="How are you terraform"}, "c", "please use the right key")
"please use the right key"
> lookup({a="Hello Terraform", b="How are you terraform"}, "1", "please use the right key")
"please use the right key"
> lookup({a="Hello Terraform", b="How are you terraform"}, "100", "please use the right key")
"please use the right key"
> 


> join(",", ["apple", "mango", "cherry"])
"apple,mango,cherry"
> join("-", ["apple", "mango", "cherry"])
"apple-mango-cherry"
> join("", ["apple", "mango", "cherry"])
"applemangocherry"
> 

> upper("applemangocherry")
"APPLEMANGOCHERRY"
> lower("APPLEMANGOCHERRY")
"applemangocherry"
> 

> replace("apple-mango-cherry", "-", "+")
"apple+mango+cherry"
> replace("apple-mango-cherry", "-", " ")
"apple mango cherry"
> 


> replace("welcome to the terraform", "the", "the world of")
"welcome to the world of terraform"
> 

> 

> base64encode("welcome to the world of terraform")
"d2VsY29tZSB0byB0aGUgd29ybGQgb2YgdGVycmFmb3Jt"
> base64encode("Welcome to the world of terraform")
"V2VsY29tZSB0byB0aGUgd29ybGQgb2YgdGVycmFmb3Jt"
> base64decode("V2VsY29tZSB0byB0aGUgd29ybGQgb2YgdGVycmFmb3Jt")
```

## For more Details 
```
https://developer.hashicorp.com/terraform/language/functions
```
