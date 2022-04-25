resource "aws_key_pair" "dove-key" {
  key_name   = "dovekey"
  public_key = file("dovekey.pub")
}

resource "aws_instance" "dove-inst" {
  ami                    = var.amis[var.region]
  instance_type          = "t2.micro"
  availability_zone      = var.zone1
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = ["sg-0d8fd7d4634a9c07b"]

  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = var.user
    private_key = file("dovekey")
    host        = self.public_ip
  }
}

output "PublicIp" {
  value = aws_instance.dove-inst.public_ip
}

output "PrivateIP" {
  value = aws_instance.dove-inst.private_ip
}