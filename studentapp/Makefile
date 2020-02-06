
.ONESHELL:
.SHELL := /usr/bin/bash
.PHONY: dev-apply dev-destroy prod-apply prod-destroy
VARS="variables/$(ENV)-$(REGION).tfvars"



help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

dev-init:
	@cd ENV/DEV
	@terraform init

prod-init:
	@cd ENV/PROD
	@terraform init


dev-apply: dev-init ## build up things for the dev environemnt
	@cd ENV/DEV
	@terraform apply -auto-approve

dev-destroy: dev-init ## Destroy things for the dev environment
	@cd ENV/DEV
	@terraform destroy -auto-approve

prod-apply: prod-init## build up things for the dev environemnt
	@cd ENV/PROD
	@terraform apply -auto-approve

prod-destroy: prod-init ## Destroy things for the dev environment
	@cd ENV/PROD
	@terraform destroy -auto-approve