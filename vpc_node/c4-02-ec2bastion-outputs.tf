# AWS ECC2 Instance Terraform Outputs
# Public EC2 Instances - Bastion Host

## ec2_bastion_public_instance)ids

output "ec2_bastion_public_instance_ids" {
  description = "List of IDs of instances"
  value = module.ec2_public.id
}


## ec2_bastion_public_ip

output "ec2_bastion_public_ip"{
	description = "Elastic IP associated to the Bastion Host"
	value = module.eip.bastion_eip.public_ip
}
