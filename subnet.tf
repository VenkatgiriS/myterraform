resource "aws_subnet" "public-subnets" {
  count = "${length(var.public_cidrs)}"
  vpc_id     = aws_vpc.myvpc.id
  #cidr_block = "${var.subnet1_cidr}"
  availability_zone = "${element(var.public_subnets, count.index)}"
  cidr_block = "${element(var.public_cidrs, count.index)}"
  tags = {
    Name = "public-subnet-${count.index+1}"
    Owner = "Venkat"
  }
}
resource "aws_subnet" "private-subnets" {
  count = "${length(var.private_cidrs)}"
  vpc_id     = aws_vpc.myvpc.id
  #cidr_block = "${var.subnet1_cidr}"
  availability_zone = "${element(var.private_subnets, count.index)}"
  cidr_block = "${element(var.private_cidrs, count.index)}"
  tags = {
    Name = "private-subnet-${count.index+1}"
    Owner = "Venkat"
  }
}
