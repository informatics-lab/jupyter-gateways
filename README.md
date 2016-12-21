# Jupyter Gateways

Config for setting up a Dashboard server and an API Gateway for Jupyter notebooks. 

## Getting started

### Local (Docker Compose)

- Set environment variables for API_DNS and DASHBOARDS_DNS
- Define matching DNS entries in localhost for /etc/hosts
- Run docker-compose up in ./docker/

### Remote (Terraform)

- Ensure ./terraform/variables.tf is correct for your environment.
- Run ./terraform/env-dev/init.sh to set up Terraform remote state management
- Add '--var-file=dev.tfvars' to your terraform apply / plan / destroy commands
