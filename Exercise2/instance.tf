resource "aws_instance" "dove-inst" {
  ami                    = var.amis[var.region]
  instance_type          = "t2.micro"
  availability_zone      = var.zone1
  key_name               = "DevOps"
  vpc_security_group_ids = ["sg-0d8fd7d4634a9c07b"]

  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}