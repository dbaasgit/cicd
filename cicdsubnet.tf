provider "aws" {
  alias   = "eks_master"
  region  = "us-east-2"

  assume_role = [{
    role_arn = "arn:aws:iam::097184783241:role/ec2-IAMRole"
  }]
}
resource "aws_subnet" "newcicd" {
  vpc_id     = ["vpc-d1c99cb9"]
  cidr_block = "172.31.64.0/24"

  tags = {
    Name = "cicd"
  }
}
