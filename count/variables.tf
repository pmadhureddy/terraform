variable "instance_names" {
    type = list(string)
    default = [ "backend", "frontend", "mysql" ]
}

variable "common_tags" {
    type =  map
   default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
   }
}