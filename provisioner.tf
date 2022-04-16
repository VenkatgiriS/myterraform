resource "null_resource" "add_file" {
  count = "${var.env == "Prod"}" ? 2 : 1
  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"
  }
  provisioner "remote-exec" {
      inline = [
      "chmod +x /tmp/script.sh",
      "sudo /tmp/script.sh"
      ]
  }
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("devops_project.pem")
      #host = aws_instance.web-1.public_ip
      #host        = self.public_ip
      host = element(aws_instance.web-1.*.public_ip, count.index)
    }
  
}
resource "null_resource" "nginxinstall" {
  count = "${var.env == "Prod"}" ? 2 : 1
  provisioner "remote-exec" {
    inline = [
      #"chmod +x /tmp/script.sh",
      #"sudo ./tmp/script.sh",
      "sudo yum update -y",
      "sudo yum install nginx -y",
      "sudo service nginx start"

    ]
    connection {
      type = "ssh"
      user = "ubuntu"
      #password = "India@123456"
      private_key = file("devops_project.pem")
      host = element(aws_instance.web-1.*.public_ip, count.index)
    }
  }
}