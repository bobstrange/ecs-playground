variable "profile" {}
variable "aws_region" { default = "ap-northeast-1" }

provider "aws" {
  profile = var.profile
  region  = var.aws_region
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "ecs-sandbox"
  }
}

