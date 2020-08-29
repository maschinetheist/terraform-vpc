resource "aws_vpc" "main" {
  cidr_block       = "10.224.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test-vpc"
  }
}
