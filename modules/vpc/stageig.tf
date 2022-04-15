resource "aws_internet_gateway" "stageig" {
  vpc_id = "${aws_vpc.stagevpc.id}"
  tags = {
    Name        = "${var.stage-environment}-igw"
    Environment = "${var.stage-environment}"
  }
}