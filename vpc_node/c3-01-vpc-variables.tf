# VPC Input Variables

# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type = string
  default = "vpc-node-project"
}

# VPC CIDR bLOCK

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string
  default = "10.0.0.0/16"
}

# VPC Availability Zones
/*
variable "vpc_Availability_zones" {
 description = "VPC Availability Zones"
 type = list(String)
 default = ["us-east-1a", "us-east-1b"]
}
*/



# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
  default = ["10.0.1.0/24" , "10.0.2.0/24"]

}

# VPC Database Subnets
variable "vpc_database_subnets" {
  description = "VPC Database Subnets"
  type = list(string)
  default = ["10.0.151.0/24", "10.0.152.0/24"]
}

# VPC CREATE  DATABASE SUBNETS GROUP (True/ False)
variable "vpc_create_database_subnet_group" {
  description = "VPC Create Database Subnet Group"
  type = bool
  default = true 
}

# VPC Create Database Route Route Table (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Tables"
  type = bool 
  default = true

}

# VPC Enable NAT Gateway (True or False)
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbund Communiation"
  type = bool
  default = true
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in One Availability Zone to save costs durign project"
  type = bool
  default = true
}




