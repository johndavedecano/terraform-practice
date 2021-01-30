provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "api" {
  ami           = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
}

resource "aws_ebs_volume" "api_volume" {
  availability_zone = "us-east-1a"
  size              = 40
}

resource "aws_volume_attachment" "api_volume_attachment" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.api_volume.id
  instance_id = aws_instance.api.id
}