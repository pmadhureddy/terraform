locals {
  domain_name = "daws81.fun"
  zone_id = "Z02068521N32RSS3OA0L5"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
  #count.index will not work
}