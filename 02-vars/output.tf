output "sample" {
  value = var.sample
}

output "list1" {
  value = var.list[0]
}

output "list3" {
  value = var.list[3]
}

output "map1" {
  value = var.map["string"]
}

output "map2" {
  value = var.map["number"]
}

output "new" {
  value = var.new
}

output "cli" {
  value = var.cli
}

output "shell" {
  value = var.shell
}

