variable "instance_names" {
    type = list(string)
    default = [ "backend1", "frontend1", "mysql1" ]
}

variable "common_tags" {
    type =  map
   default = {
    Project = "expense"
    Environment = "dev"
    Terraform = "true"
   }
}

variable "zone_id" {
    default = "Z02068521N32RSS3OA0L5"
  
}

variable "domain_name" {
    default = "daws81.fun"
  
}