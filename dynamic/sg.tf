resource "aws_security_group" "allow_ssh_terraform" {
  name        = "Dynamic Demo"
  description = "Allow port number multiple ports for ssh access"
#   vpc_id      = aws_vpc.main.id


tags = {
    Name = "allow_ssh"
  }


#usually allows everything in egress
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  dynamic "ingress" {
    for_each = var.ingress-rules
    content {
      
    from_port        = ingress.value["from_port"]
    to_port          = ingress.value["to_port"]
    protocol         = ingress.value["protocol"]
    cidr_blocks      = ingress.value["cidr_blocks"]
    }
  }

}

