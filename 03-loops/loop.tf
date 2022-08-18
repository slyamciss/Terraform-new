resource "null_resource" "new" {
  triggers = {
    abc = timestamp()
  }
  count = 3
  provisioner "remote-exec" {
    command = "Hello WORLD"
  }
}