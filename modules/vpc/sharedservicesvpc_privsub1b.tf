resource "aws_subnet" "sharedservicesvpc_privsub1b" {
  vpc_id                  = "${aws_vpc.sharedservicesvpc.id}"
  count                   = "${length(var.private_subnets_cidr)}"
  cidr_block              = "${element(var.private_subnets_cidr, count.index)}"
  availability_zone       = "${element(var.availability_zones1b,   count.index)}"
  map_public_ip_on_launch = false
  tags = {
    Name        = "${var.sharedservices-environment}-${element(var.availability_zone1b, count.index)}-private-subnet"
    Environment = "${var.sharedservices-environment}"
  }
}