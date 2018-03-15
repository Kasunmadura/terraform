provider "aws"{
  region = "us-east-1"
  shared_credentials_file = "/home/kasunr/.aws/credentials"
  profile = "kasun"
}

resource "aws_instance" "webserver" {
  ami = "ami-fce3c696"
  instance_type = "t2.micro"
}
