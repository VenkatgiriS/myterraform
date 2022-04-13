resource "aws_subnet" "public-subnets" {
  count = 3
  vpc_id     = aws_vpc.myvpc.id
  #cidr_block = "${var.subnet1_cidr}"
  cidr_block = "${element(var.public_subnets, count.index)}"
  availability_zone = "${element(var.public_cidrs, count.index)}"
  tags = {
    Name = "public-subnet-${count.index+1}"
    Owner = "Venkat"
  }
}
