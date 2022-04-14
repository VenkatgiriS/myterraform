/*
variable "access_key" {
  type    = string
  default = "AKIARMSALXDJECQ2N6HN"
  description = "This is access key"  
}

variable "secret_key" {
  type    = string
  default = "mstkoXaR4Wr7PIPz2Hl2ZudGTVwOKIVPSlTsCdJ/"
  description = "This is secret key"    
}

variable "vpc_cidr" {
  type    = string
  default = "20.25.0.0/16"
  description = "This is cidr block for aws vpc"    
}

variable "subnet1_cidr" {
  type    = string
  default = "20.25.1.0/24"
  description = "This is cidr block for subnet1"    
}
variable "subnet1_az" {
  type    = string
  default = "us-east-1a"
  description = "This is az for subnet1"    
}

variable "subnet2_cidr" {
  type    = string
  default = "20.25.2.0/24"
  description = "This is cidr block for subnet2"    
}
variable "subnet2_az" {
  type    = string
  default = "us-east-1b"
  description = "This is az for subnet2"    
}

variable "subnet3_cidr" {
  type    = string
  default = "20.25.3.0/24"
  description = "This is cidr block for subnet3"    
}
variable "subnet3_az" {
  type    = string
  default = "us-east-1c"
  description = "This is az for subnet3"    
}
*/
variable "access_key" {}
variable "secret_key" {}
variable "vpc_name" {}
variable "vpc_cidr" {}
variable "igw_name" {}
variable "region" {}
variable "env" {}
#variable "subnet1_name" {}
#variable "subnet2_name" {}
#variable "subnet3_name" {}
#variable "subnet1_cidr" {}
#variable "subnet1_az" {}
#variable "subnet2_cidr" {}
#variable "subnet2_az" {} 
#variable "subnet3_cidr" {}
#variable "subnet3_az" {}
variable "public_subnets" {
    type = list
    default = ["us-east-1a","us-east-1b","us-east-1c"] 
}
variable "public_cidrs" {
    type = list
    default = ["20.25.1.0/24","20.25.2.0/24","20.25.3.0/24","20.25.4.0/24","20.25.5.0/24","20.25.6.0/24"] 
}
variable "private_subnets" {
    type = list
    default = ["us-east-1a","us-east-1b","us-east-1c"] 
}
variable "private_cidrs" {
    type = list
    default = ["20.25.20.0/24","20.25.30.0/24","20.25.40.0/24","20.25.50.0/24","20.25.60.0/24","20.25.70.0/24"] 
}
variable "amis" {
    description = "AMIs by region"
    default = {
      us-east-1 = "ami-04505e74c0741db8d" # ubuntu 20.04 LTS
		  us-east-2 = "ami-0fb653ca2d3203ac1" # ubuntu 20.04 LTS
		  us-west-1 = "ami-0454207e5367abf01" # ubuntu 16.04 LTS
		  us-west-2 = "ami-0688ba7eeeeefe3cd" # ubuntu 14.04 LTS
    }
}