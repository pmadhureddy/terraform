resource "aws_security_group" "allow_ssh_terraform" {
  name        = "allow_ssh"
  description = "Allow port number 22 for ssh access"
#   vpc_id      = aws_vpc.main.id


tags = merge(

  var.common_tags, 
  {
    Name = "allow_ssh"
  }
)




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


resource "aws_instance" "terraform" {
  count = length((var.instance_names))
  ami           = "ami-09c813fb71547fc4f"
  instance_type =  "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terraform.id]


  tags = merge(

  var.common_tags, 
  {
    Name = var.instance_names[count.index]
  }
)
}