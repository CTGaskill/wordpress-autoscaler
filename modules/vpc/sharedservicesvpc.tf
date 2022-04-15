resource "aws_vpc" "sharedservicesvpc" {
  cidr_block           = "${var.sharedservices_vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name        = "${var.sharedservices-environment}-vpc"
    Environment = "${var.sharedservices-environment}"
  }
