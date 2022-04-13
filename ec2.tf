 resource "aws_instance" "web-1" {
     count =3 #0,1,2
     #ami = var.imagename
     ami = "ami-04505e74c0741db8d"
     #ami = "${data.aws_ami.my_ami.id}"
     availability_zone = "us-east-1a"
     instance_type = "t2.nano"
     key_name = "devops_project"
     subnet_id = "${aws_subnet.mysubnet1.id}"
     vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
     associate_public_ip_address = true	
     tags = {
         Name = "Server-${count.index}"
         Env = "Prod"
         Owner = "Venkat"
 	CostCenter = "ABCD"
     }
 }
