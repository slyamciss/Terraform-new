variable "list" {
  default = [1, 2, 3]
}

output "number_of_list" {
  value = length(var.list)
}

output "get_first_value" {
  value = var.list[0]
}