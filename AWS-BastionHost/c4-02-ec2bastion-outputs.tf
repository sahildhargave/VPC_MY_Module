# AWS EC2 Instance Terraform Outputs
# Public EC2 Instances - Bastion Host

## ec2_bastion_public_instance_ids
output "ec2_bastion_public_instance_ids"{
	description = "List of IDs of Instance"
	value = module.ec2_public.id
}

## ec2_bastion_public_eip
output "ec2_bastion_eip" {
  description = "Elastic IP Associated To The Bastion Host"
  value = aws_eip.bastion_eip.public_ip
}
