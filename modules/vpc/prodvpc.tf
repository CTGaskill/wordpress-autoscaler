resource "aws_vpc" "prodvpc" {
  cidr_block           = "${var.prod_vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name        = "${var.prod-environment}-vpc"
    Environment = "${var.prod-environment}"
  }
