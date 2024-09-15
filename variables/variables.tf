#command line
#tfvars
#environment
#default
#prompt

variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "This is the ANI ID for the RHEL 9 and the name is devops-practice"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "backend"
        Project = "expense"
        Component = "backend"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "sg_name" {
    type = string
    default = "allow_sshh"
}

variable "sg_description" {
    type = string
    default = "Allow port number 22 for ssh access"
}

variable "from_port" {
    type = number
    default = 22
  
}

variable "to_port" {
    type = number
    default = 22
  
}

variable "protocol_type" {
    type = string
    default = "tcp"
  
}

variable "ingress_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
  
}