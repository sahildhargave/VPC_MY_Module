# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

# Environment Variable
variable "environment" {
  description = "Environment Variables used as a prefix"
  type = string
  default = "dev"
}

# Business Division
variable "business_division" {
  description = "Bussiness Division in the large orgainization this Infrastructure belongs"
  type = string
  default = "SAP"
}


