dev:
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -auto-approve -var-file=env-dev/inputs.tfvars

prod:
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=env-prod/state.tfvars
	terraform apply -auto-approve -var-file=env-prod/inputs.tfvars

dev-destroy:
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=env-dev/state.tfvars
	terraform destroy -auto-approve -var-file=env-dev/inputs.tfvars

prod-destroy:
	rm -f .terraform/terraform.tfstate
	terraform init -backend-config=env-prod/state.tfvars
	terraform destroy -auto-approve -var-file=env-prod/inputs.tfvars
