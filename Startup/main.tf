provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
        ami = "ami-0c4f7023847b90238"
        instance_type = "t2.micro"
}