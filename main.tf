provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0565af6e282977273"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "Module 3 Lab 3"
    User = "${var.lab_username}"
  }

  count         = "${var.cluster_count}"
}

resource "aws_instance" "new_feature" {
  ami           = "ami-0565af6e282977273"
  instance_type = "${var.instance_type}"

  tags = {
    Name        = "Module 3 Lab 3"
    User        = "${var.lab_username}"
    Description = "New feature"
  }
}
