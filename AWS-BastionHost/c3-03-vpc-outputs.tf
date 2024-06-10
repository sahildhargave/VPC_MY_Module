# VPC Output values

# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value = module.vpc.vpc_id
}

# VPC CIDR blocks
output "vpc_cidr_block" {
	description = "The CIDR block of the VPC"
  value = module.vpc.vpc_cidr_block
}

# VPC Private Subnets
output "private_subnets" {
  description = "List of IDs of private subnets"
  value = module.vpc.private_subnets
}

# VPC Public Subnets
output "public_subnets"{
	description = "List of the IDs of the public subnets"
	value = module.vpc.public_subnets
}


# VPC NAT gateway Public IP
output "nat_public_ips" {
  description = "List of the public Elastic Ips created for AWS NAT Gateway"
  value = module.vpc.nat_public_ips
}

# VPC AZs
output "azs" {
  description = "List of the Availability Zones spefified as argument to this module"
  value = module.vpc.azs
}



