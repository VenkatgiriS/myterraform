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

    route {
        cidr_block = "0.0.0.0/0"
    }

    tags = {
        Name = "Private_Routing_Table"
    }
}