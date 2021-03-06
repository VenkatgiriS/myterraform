resource "aws_route_table" "public-rt" {
    vpc_id = "${aws_vpc.myvpc.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.myvpcgw.id}"
    }

    tags = {
        Name = "Public_Routing_Table"
    }
}

resource "aws_route_table" "private-rt" {
    vpc_id = "${aws_vpc.myvpc.id}"

    tags = {
        Name = "Private_Routing_Table"
    }
}
resource "aws_route_table_association" "public-rt-subnet-association" {
    count = "${length(var.public_cidrs)}"
    subnet_id = "${element(aws_subnet.public-subnets.*.id , count.index)}"
    route_table_id = "${aws_route_table.public-rt.id}"
}
resource "aws_route_table_association" "private-rt-subnet-association" {
    count = "${length(var.private_cidrs)}"
    subnet_id = "${element(aws_subnet.private-subnets.*.id , count.index)}"
    route_table_id = "${aws_route_table.private-rt.id}"
}