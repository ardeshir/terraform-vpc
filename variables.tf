variable "aws_region" {

  description = "The AWS Region to create things."
  default = "us-east-1"

}

variable "key_name" {
 
   description = "The NonProd Key Name"
   default = "dev-bastion"

}
  
variables "vpc_cidr" {

   description = "NON PROD VPC CIDR Range"
   default = "10.6.74.0/23"

}

variable "ingress_subnet_az_1_CIDR" {

  description = "Ingress Subnet AZ 1 CIDR"
  default = "10.6.74.1/26"

}

variable "ingress_subnet_az_2_CIDR" {
  
  description = "Ingress Subnet AZ 2 CIDR"
  default = "10.6.74.64/26"

}


variable "private_subnet_az_1_CIDR" {
  
  description = "Ingress Subnet AZ 1 CIDR"
  default = "10.6.74.128/26"

}

variable "private_subnet_az_2_CIDR" {

  description = "Ingress Subnet AZ 2 CIDR"
  default = "10.6.74.192/26"

}


