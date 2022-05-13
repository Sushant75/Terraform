provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-0c4f7023847b90238"
    instance_type = "t2.micro"
}

terraform {
    backend "s3" {
      # Replace this with your bucket name!
      bucket = "terraform-up-and-running-state-78785"
      key = "workspaces-example/terraform.tfstate"
      region = "us-east-1"

      # Replace this with your DynamoDB table name!
      dynamodb_table = "terraform-up-and-running-locks"
      encrypt = true
    }
}