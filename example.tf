provider "aws"{
  region = "${var.region}"
  shared_credentials_file = "${var.credentials}"
  profile = "${var.profile}"
}

resource "aws_instance" "webserver" {
  ami = "ami-fce3c696"
  instance_type = "t2.micro"
}
