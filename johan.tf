variable "region" { 
  default = "eu-west-1"
}

variable "amis" {
  type = "map"
  default = {
    eu-west-1 = "ami-3da0cf4e"
    eu-west-1 = "ami-40f49b33"
  }
}
