resource "aws_instance" "expense1" {
  count = length((var.instance_names))
  ami           = data.aws_ami.aws_info.id    
  instance_type =  var.instance_names[count.index] == "mysql" ? "t3.small" : "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]



  tags = {
    Name = var.instance_names[count.index]
  }
}


resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_ssh"
  description = "Allow port number 22 for ssh access"
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


  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


}