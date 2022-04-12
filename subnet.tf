resource "aws_subnet" "mysubnet1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "${var.subnet1_cidr}"
  availability_zone = "${var.subnet1_az}"

  tags = {
    Name = "${var.subnet1_name}"
  }
}
resource "aws_subnet" "mysubnet2" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "${var.subnet2_cidr}"
  availability_zone = "${var.subnet2_az}"

  tags = {
    Name = "${var.subnet2_name}"
  }
}
resource "aws_subnet" "mysubnet3" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = "${var.subnet3_cidr}"
  availability_zone = "${var.subnet3_az}"

  tags = {
    Name = "${var.subnet3_name}"
  }
}