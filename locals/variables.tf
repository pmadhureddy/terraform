variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "Multiple instancess"

}

# variable "domain_name" {
#   default = "daws81.fun"

# }

# variable "zone_id" {
#   default = "Z02068521N32RSS3OA0L5"

# }

variable "environment" {
  default = "prod"
  
}