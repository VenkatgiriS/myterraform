resource "aws_instance" "web-1" {
  count = "${var.env == "Prod"}" ? 2 : 1 #0,1,2
  #ami = var.imagename
  ami = lookup(var.amis, var.region)
  #ami = "${data.aws_ami.my_ami.id}"
  #availability_zone = "us-east-1a"
  instance_type               = "t2.nano"
  key_name                    = "devops_project"
  subnet_id                   = element(aws_subnet.public-subnets.*.id, count.index)
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Server-${count.index + 1}"
    Env        = "${var.env}"
    Owner      = "Venkat"
    CostCenter = "ABCD"
  }
  #    user_data = <<-EOF
  # 	#!/bin/bash
  #       sudo apt-get update
  # 	sudo apt-get install -y nginx
  # 	sudo systemctl start nginx
  # 	sudo systemctl enable nginx
  # 	echo "<h1>Server-${count.index + 1 }</h1>" | sudo tee /var/www/html/index.nginx-debian.html
  # EOF
  lifecycle {
    #create_before_destroy = true
    #prevent_destroy = true
    ignore_changes = [
      tags,
    ]
  }
}
