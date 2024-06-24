terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.31"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.20"
    }
  }

  backend "s3" {
    bucket         = "terraform-on-aws-eks"
    key            = "dev/app1k8s/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "dev-app1k8s"
  }
}
