# Makefile for Terraform Commands

# Variables
TERRAFORM = terraform

# Default target
.PHONY: all
all: init validate plan apply

# Initialize Terraform
.PHONY: init
init:
	@echo "Initializing Terraform..."
	$(TERRAFORM) init

# Validate Terraform configuration
.PHONY: validate
validate:
	@echo "Validating Terraform configuration..."
	$(TERRAFORM) validate

 # aws ec2 describe-instance-type-offerings --location-type availability-zone --filters Name=instance-type,Values=t3.micro --region us-east-1 --output table

# Generate and show an execution plan
.PHONY: plan
plan:
	@echo "Generating Terraform execution plan..."
	$(TERRAFORM) plan

# Apply the changes required to reach the desired state of the configuration
.PHONY: apply
apply:
	@echo "Applying Terraform configuration..."
	$(TERRAFORM) apply -auto-approve

# Destroy Terraform-managed infrastructure
.PHONY: destroy
destroy:
	@echo "Destroying Terraform-managed infrastructure..."
	$(TERRAFORM) destroy -auto-approve

# Help target
.PHONY: help
help:
	@echo "Usage:"
	@echo "  make init       - Initialize Terraform"
	@echo "  make validate   - Validate Terraform configuration"
	@echo "  make plan       - Generate and show an execution plan"
	@echo "  make apply      - Apply the changes required to reach the desired state"
	@echo "  make destroy    - Destroy Terraform-managed infrastructure"
	@echo "  make all        - Run init, validate, plan, and apply"
