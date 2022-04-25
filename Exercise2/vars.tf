variable "region" {
  default = "us-east-1"
}

variable "zone1" {
  default = "us-east-1a"
}

variable "amis" {
  type = map(any)
  default = {
    us-east-1 = "ami-0f9fc25dd2506cf6d"
    us-east-2 = "ami-0c6a6b0e75b2b6ce7"
  }
}