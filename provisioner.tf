resource "null_resource" "add_file" {
  count = "${var.env == "Prod"}" ? 3 : 1
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
  count = "${var.env == "Prod"}" ? 3 : 1
  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install nginx -y",
      "sudo apt install cowsay -y",
      "cowsay 'Hi Venkatgiri'",
      "sudo service nginx start",
      "echo '<h1>Hi_Venkatgiri.This_is_Server-${count.index+1}</h1>' | sudo tee /var/www/html/index.nginx-debian.html"
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
resource "null_resource" "instancedetails" {
    count = "${var.env == "Prod"}" ? 3 : 1
    provisioner "local-exec" {
    command = <<EOH
    echo "${element(aws_instance.web-1.*.public_ip,count.index)}" >> details && echo "${element(aws_instance.web-1.*.private_ip,count.index)}" >> details && echo "${element(aws_instance.web-1.*.public_dns,count.index)}" >> details
    EOH
  }
    depends_on = [
    aws_instance.web-1,
  ]
}
