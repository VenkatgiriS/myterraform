resource "aws_vpc" "myvpc" {
    cidr_block = "${var.vpc_cidr}"
    enable_dns_hostnames = true
    tags = {
        Name = "${var.vpc_name}"
	    Owner = "Venkatgiri"
	    environment = "Prod"
    }
}

resource "aws_internet_gateway" "myvpcgw" {
    vpc_id = "${aws_vpc.myvpc.id}"
	tags = {
        Name = "${var.igw_name}"
    }
}
