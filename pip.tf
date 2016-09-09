provider "aws" {
  region     = "${var.region}"
}

resource "aws_instance" "johan" {
  key_name = "key-lv20ck"
  tags { Name =  "Johans-terraform" }
  subnet_id = "subnet-0a3c7653"
  ami           = "$lookup(var.amis, var.region)}"
  instance_type = "t2.micro"
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo ${aws_instance.johan.public_ip} > pip.txt" 
  }
}

