provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = "ami-047a51fa27710816e"
    instance_type = "t2.micro"
}

resource "aws_key_pair" "mykeyname" {
  key_name = ""
}