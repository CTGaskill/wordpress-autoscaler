resource "aws_eip" "sharedservices_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.sharedservicesig]
}