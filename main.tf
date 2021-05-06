provider "aws" {
  region     = var.region
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  associate_public_ip_address = true
  key_name = var.key_name
  subnet_id = var.subnet_id
  security_groups = var.security_groups

  tags = {
    Name = "Apache-jenkins-deploy"
  }
  user_data = "${file("./apache.sh")}"
}