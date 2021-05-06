variable "region" { default = "us-east-1"}
variable "ami_id" { default = "ami-096fda3c22c1c990a"}
variable "instance_type" { default = "t2.micro"}
variable "key_name" {default = "jenkins-sg"} 
variable "security_groups" {
    type = "list"
    default = ["sg-07f1194be45d29d97"]}
variable "subnet_id" {default = "subnet-028806318df3b368f"}