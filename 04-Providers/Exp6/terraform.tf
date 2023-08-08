terraform { 
  required_providers {
    aws = { 
      source = "hashicorp/aws"
      version = ">=4.44, <=4.46"
    }

    
    azurerm = { 
      source = "hashicorp/azurerm"
      version = ">=3.40, <=3.46"
  }

}
