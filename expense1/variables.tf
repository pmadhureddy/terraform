variable "instance_names" {
    type = list(string)
    default = [ "mysql", "backend", "frontend" ]
    description = "Multiple instancess"
  
}