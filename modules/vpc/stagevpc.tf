resource "aws_vpc" "stagevpc" {
  cidr_block           = "${var.stage_vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name        = "${var.stage-environment}-vpc"
    Environment = "${var.stage-environment}"
  }
