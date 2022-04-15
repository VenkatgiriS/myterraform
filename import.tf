 resource "aws_instance" "web-10" {
    #  count = "${var.env == "Prod"}"? 2 : 1 #0,1,2
    #  #ami = var.imagename
    #  ami = "${lookup(var.amis,var.region)}"
    #  #ami = "${data.aws_ami.my_ami.id}"
    #  #availability_zone = "us-east-1a"
    #  instance_type = "t2.nano"
    #  key_name = "devops_project"
    #  subnet_id = "${element(aws_subnet.public-subnets.*.id , count.index)}"
    #  vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    #  associate_public_ip_address = true	
    #  tags = {
    #      Name = "Server-${count.index + 1 }"
    #      Env = "${var.env}"
    #      Owner = "Venkat"
 	# CostCenter = "ABCD"
    #  }
 }
