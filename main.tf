provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
}

resource "aws_instance" "dev" {
  count         = 3
  ami           = "ami-0e472ba40eb589f49"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"
  tags = {
    Name = "dev-${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_instance" "dev4" {
  ami           = "ami-0e472ba40eb589f49"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"
  tags = {
    Name = "dev4"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  depends_on = [
    aws_s3_bucket.dev4
  ]
}


resource "aws_s3_bucket" "dev4" {
  bucket = "lcsd-dev4"
  acl = "private"
  tags = {
    Name        = "lcsd-dev4"
  }
}