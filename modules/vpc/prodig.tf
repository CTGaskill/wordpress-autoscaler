resource "aws_internet_gateway" "prodig" {
  vpc_id = "${aws_vpc.prodvpc.id}"
  tags = {
    Name        = "${var.prod-environment}-igw"
    Environment = "${var.prod-environment}"
  }
}