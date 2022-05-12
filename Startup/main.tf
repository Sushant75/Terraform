provider "aws" {
    region = "us-east-1"
}

variable "server_port" {
    description = "The port the server will use for HTTP requests"
    type = number
    default = 80
}

resource "aws_instance" "example" {
        ami = "ami-0c4f7023847b90238"
        instance_type = "t2.micro"
        vpc_security_group_ids = [aws_security_group.instance.id]
        user_data = <<-EOF
                    #!/bin/bash
                    sudo apt-get update
                    sudo apt-get install apache2 -y
                    EOF

        tags = {
          Name = "terraform-example"
        }
}

resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  ingress {
    from_port = var.server_port
    to_port = var.server_port
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  } 
}

output "public_ip" {
    value =  aws_instance.example.public_ip
    description = " aws_instance.example.public_ip"
}