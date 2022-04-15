resource "aws_subnet" "prodvpc_pubsub1c" {
  vpc_id                  = "${aws_vpc.prodvpc.id}"
  count                   = "${length(var.public_subnets_cidr)}"
  cidr_block              = "${element(var.public_subnets_cidr,   count.index)}"
  availability_zone       = "${element(var.availability_zone1c,   count.index)}"
  map_public_ip_on_launch = true
  tags = {
    Name        = "${var.prod-environment}-${element(var.availability_zone1c, count.index)}-      public-subnet"
    Environment = "${var.prod-environment}"
  }
}