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