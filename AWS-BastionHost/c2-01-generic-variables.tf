# Input Variables
# AWS REGION
variable "aws_region" {
  description = "Region in Which AWS Resources to be created"
  type= string 
  default = "us-east-1"
}

# Environment Variables
variable "environment" {
  description = "Environment Variables used as a prefic"
  type = string
  default = "dev"
}

# Business Division
variable "business_division" {
  description = "Business Division in the large organistaion this infrastructure belongs"
  type= string
  default = "SAP"
}


