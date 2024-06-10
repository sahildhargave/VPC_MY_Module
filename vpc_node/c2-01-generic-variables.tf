# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string 
  default = "us-east-1"
}

variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}

# Business Division
variable "business_division"{
	description = "Business Division in the large organisation this Infrastructure belongs"
	type = string
	default = "SAP"
}

