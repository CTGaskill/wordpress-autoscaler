resource "aws_subnet" "stagevpc_pubsub1b" {
  vpc_id                  = "${aws_vpc.stagevpc.id}"
  count                   = "${length(var.public_subnets_cidr)}"
  cidr_block              = "${element(var.public_subnets_cidr,   count.index)}"
  availability_zone       = "${element(var.availability_zone1b,   count.index)}"
  map_public_ip_on_launch = true
  tags = {
    Name        = "${var.stage-environment}-${element(var.availability_zone1b, count.index)}-      public-subnet"
    Environment = "${var.stage-environment}"
  }
}