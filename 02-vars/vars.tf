#variable "sample" {}

variable "sample" {
  default = "Hello world!"
}

# String Data Type
variable "sample1" {
  default = "Hello world!"
}

## Single quotes are not supported in Terraform

# Number Data Type
variable "sample2" {
  default = 100
}

# Boolean Data Type
variable "sample3" {
  default = true
}

## Terraform supports 3 variables types :
# Default Variable
variable "sample4" {
  default = "Hello world!"
}

# List Variable Type
# List can have value of different data types

variable "list" {
  default = [
  "Hello",
    1000,
    true,
    "tariq & Bilal"
  ]
}

# Map Variable Type
variable "map" {
  default =  {
    string = "Hello sons !",
    number = 100
    boolean = true
  }
}

## Variable values from tfvars
variable "new" {}

## Variable from CLI
variable "cli" {}

## variable from shell
variable "shell" {}

## Variable precedence
## 1. -var and -var-file
## 2. *.auto.tfvars
## 3. terraform.tfvars
## 4. SHELL, ENV, VARS