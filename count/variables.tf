variable "instance_names" {
    type = list(string)
    default = [ "backend", "frontend", "mysql" ]
}