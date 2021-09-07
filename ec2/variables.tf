# General
variable aws_region {
  type = string
  default = "us-east-1"
}

variable aws_profile {
  type = string
  default = "github-user"
}

variable tfstate_bucket {
  type = string
  default = "github-nathy-tfstate"
}

variable tfstate_key {
  type = string
  default = "ec2/terraform.state"
}

# Network
variable vpc_cidr_block {
  type        = string
  default     = "10.0.0.0/20"
}

variable priv_cidr_block {
  type        = string
  default     = "10.0.1.0/25"
}

variable pub_cidr_block {
  type        = string
  default     = "10.0.2.0/25"
}

variable network_name {
  type        = string
  default     = "vpc-ec2-test"
}

# EC2
variable ec2_key {
  type        = string
  default     = "github-nathy"
}

variable instance_type {
  type = string
  default = "t3.small"
}

variable ami_ec2 {
  type = string
  default = "ami-05dc324761386f3a9"
}

# SG
variable default_ingress {
  type = map(object({description = string, cidr_blocks = list(string)}))
  default = {
    22 = { description = "Inbound para SSH", cidr_blocks = [ "xxxx/32" ] }
  }
}

variable tags {
  type = map
  default = {
    Creation = "Terraform"
  }
}