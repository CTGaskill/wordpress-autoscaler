resource "aws_internet_gateway" "sharedservicesig" {
  vpc_id = "${aws_vpc.sharedservicesvpc.id}"
  tags = {
    Name        = "${var.sharedservices-environment}-igw"
    Environment = "${var.sharedservices-environment}"
  }
}