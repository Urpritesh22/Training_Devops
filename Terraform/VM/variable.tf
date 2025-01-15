variable "new_ami_id" {
    default = "ami-0166e89d589bb1b2f"
    description = "ami id for instance"
}

variable "my_instance_type" {
    default = "t2.micro"
    description = "instance type"  
}

variable "ec2_name_tag" {
    default = "Server1"  
}

variable "vpc_region" {
  default = "ap-south-1"
}

variable "vpc_cidr_block" {
  default = "10.10.0.0/16"
}

variable "vpc_name_tag" {
  default = "new-vpc"
}

variable "subnet_cidr_block" {
  default = "10.10.1.0/24"
}

variable "subnet_name" {
  default = "Subnet1"
}

variable "igw_name" {
  default = "MyIGW"
}