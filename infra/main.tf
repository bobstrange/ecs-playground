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

resource "aws_subnet" "public_1a" {
  vpc_id = aws_vpc.main.id

  availability_zone = "ap-northeast-1a"
  cidr_block        = "10.0.1.0/24"
  tags = {
    Name = "ecs-sandbox-1a"
  }
}

resource "aws_subnet" "public_1c" {
  vpc_id = aws_vpc.main.id

  availability_zone = "ap-northeast-1c"
  cidr_block        = "10.0.2.0/24"
  tags = {
    Name = "ecs-sandbox-1c"
  }
}

resource "aws_subnet" "public_1d" {
  vpc_id = aws_vpc.main.id

  availability_zone = "ap-northeast-1d"
  cidr_block        = "10.0.3.0/24"
  tags = {
    Name = "ecs-sandbox-1d"
  }
}

resource "aws_subnet" "private_1a" {
  vpc_id = aws_vpc.main.id

  availability_zone = "ap-northeast-1a"
  cidr_block        = "10.0.10.0/24"

  tags = {
    Name = "ecs-sandbox-private-1a"
  }
}

resource "aws_subnet" "private_1c" {
  vpc_id = aws_vpc.main.id

  availability_zone = "ap-northeast-1c"
  cidr_block        = "10.0.20.0/24"

  tags = {
    Name = "ecs-sandbox-private-1c"
  }
}

resource "aws_subnet" "private_1d" {
  vpc_id = aws_vpc.main.id

  availability_zone = "ap-northeast-1d"
  cidr_block        = "10.0.20.0/24"

  tags = {
    Name = "ecs-sandbox-private-1d"
  }
}

