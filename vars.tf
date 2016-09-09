variable "region" { 
  default = "eu-west-1"
}

variable "amis" {
  #variable "region" {}
  type = "map"
  default = {
    eu-west-1 = "ami-3da0cf4e"
    eu-west-2 = "ami-40f49b33"
  }
}

output "ip" {
  value = "${aws_instance.johan.public_ip}"
}
