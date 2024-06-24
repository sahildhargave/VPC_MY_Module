# Terraform AWS Provider Block
provider "aws" {
  region = "us-east-1"
}

# Remote State Data Source
data "terraform_remote_state" "eks1" {
  backend = "s3"
  config = {
    bucket = "your-remote-state-bucket"
    key    = "path/to/eks/terraform.tfstate"
    region = "us-east-1"
  }
}

# AWS EKS Cluster Data Source
data "aws_eks_cluster" "cluster" {
  name = data.terraform_remote_state.eks.outputs.cluster_name
}

# AWS EKS Cluster Auth Data Source
data "aws_eks_cluster_auth" "cluster" {
  name = data.terraform_remote_state.eks.outputs.cluster_name
}

# Terraform Kubernetes Provider
provider "kubernetes" {
  host                   = data.terraform_remote_state.eks.outputs.cluster_endpoint
  cluster_ca_certificate = base64decode(data.terraform_remote_state.eks.outputs.cluster_certificate_authority_data)
  token                  = data.terraform_remote_state.eks.outputs.cluster_auth_token
}
