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
    "world!"
  ]
}

# Map Variable Type
variable "sample6" {
  default =  {
    string = "Hello world!",
    number = 100
    boolean = true
  }
}