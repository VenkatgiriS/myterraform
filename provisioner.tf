  resource "null_resource" "add_file" {
    provisioner "file" {
      source      = "script.sh"
      destination = "/tmp/script.sh"
      connection {
        type        = "ssh"
        user        = "ubuntu"
        private_key = file("devops_project.pem")
        host        = self.public_ip
        #host        = element(aws_instance.web-1.*.public_ip, count.index)
      }
    }
  }