resource "aws_nat_gateway" "sharedservices_ng" {
  allocation_id = "${aws_eip.sharedservices_eip.id}"
  subnet_id     = "${element(aws_subnet.public_subnet.*.id, 0)}"
  depends_on    = [aws_internet_gateway.sharedservicesig]
  tags = {
    Name        = "sharedservices_ng"
    Environment = "${var.sharedservices-environment}"
  }
}