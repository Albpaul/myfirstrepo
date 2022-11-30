provider "aws" {
  region = "us-east-1"

    access_key = ""
    secret_key  = ""
}
terraform {
  backend "s3" {
    bucket = "mystate412"
    key    = "mystatekey"
    region = "us-east-1"
     access_key = ""
    secret_key  = ""
  }
}

resource "aws_instance" "Paul" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"

  tags = {
    Name = "Olequoa"
  }
}  
resource "aws_instance" "Paul2" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"

  tags = {
    Name = "Olequoa1"
  }
  }