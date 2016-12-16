# variables shared by all environments

provider "aws" {
  region = "eu-west-1"
}

variable "tf_s3_bucket" {
  default = "informatics-jupyter-gateways-terraform"
}

variable "prototype_state_file" {
  default = "/dev/dev.tfstate"
}

variable "aws_dns_zone_id" {
  default = "Z3USS9SVLB2LY1"
}
