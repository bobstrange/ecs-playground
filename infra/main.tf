variable "profile" {}
variable "aws_region" { default = "ap-northeast-1" }

provider "aws" {
  profile = var.profile
  region  = var.aws_region
}
