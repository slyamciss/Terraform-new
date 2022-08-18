#resource "aws_instance" "ec2" {
#  ami                    = "ami-0bb6af715826253bf"
#  instance_type          = "t2.micro"
#  vpc_security_group_ids = [aws_security_group.allow_app.id]
#
#  tags = {
#    Name = var.COMPONENT
#  }
#}

resource "aws_spot_instance_request" "ec2" {
  ami                    = "ami-0bb6af715826253bf"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_app.id]
  wait_for_fulfillment   = true

  tags = {
    Name = var.COMPONENT
  }
}

resource "aws_ec2_tag" "ec2-name-tag" {
  resource_id = aws_spot_instance_request.ec2.spot_instance_id
  key         = "Name"
  value       = var.COMPONENT
}

resource "aws_ec2_tag" "ec2-monitor-tag" {
  resource_id = aws_spot_instance_request.ec2.spot_instance_id
  key         = "Monitor"
  value       = var.MONITOR
}

resource "null_resource" "ansible-apply"  {
  depends_on = [aws_route53_record.www]
  triggers = {
    abc= timestamp()
  }
  provisioner "remote-exec" {
    connection {
      user     = "root"
      password = "DevOps321"
      host     = aws_spot_instance_request.ec2.public_ip
    }
    inline = [
      "ansible pull -U https://github.com/raghudevopsb62/ansible.git roboshop-pull.yml -e COMPONENT=${var.COMPONENT} -e ENV=dev"
    ]
  }
}