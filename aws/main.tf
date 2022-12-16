terraform {
required_providers {
   aws = {
  source = "hashicorp/aws"
 version = "~> 4.16"
}
}
required_version = ">= 1.2.0"
}
 provider "aws"{
region = "ap-south-1"
}
locals {
   instances = {"ram":"ami-074dc0a6f6c764218","Shan":"ami-07ffb2f4d65357b42","shubh":"ami-074dc0a6f6c764218","karan":"ami-07ffb2f4d65357b42", "Shubham":"ami-074dc0a6f6c764218", "shivam":"ami-074dc0a6f6c764218"}
}
resource "aws_instance" "aws_ec2_test" {
  for_each = local.instances
  ami = each.value
  instance_type = "t2.micro"
  tags = {
  Name = each.key 
}
}
