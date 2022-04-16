#  resource "aws_instance" "web-10" {
#      #count = "${var.env == "Prod"}"? 2 : 1 #0,1,2
#      ami = "ami-03ededff12e34e59e"
#      #ami = "${lookup(var.amis,var.region)}"
#      #ami = "${data.aws_ami.my_ami.id}"
#      #availability_zone = "us-east-1a"
#      instance_type = "t2.micro"
#      key_name = "devops_project"
#      subnet_id = "subnet-040a95ea95f4661b9"
#      vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
#      associate_public_ip_address = true	
#      tags = {
#          Name = "Import"
#     }
#  }
