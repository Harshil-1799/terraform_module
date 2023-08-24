# Initialize the AWS provider
provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_key_pair" "tf-key-pair" {
  key_name = "tf-key-pair"
  public_key = tls_private_key.rsa.public_key_openssh
}

# Generate PEM file
resource "tls_private_key" "rsa" {
  algorithm = "RSA"
}

# Store PEM file locally
resource "local_file" "tf-key" {
  content  = tls_private_key.rsa.private_key_pem
  filename = "tf-key-pair"
}

module "myinstance" {
  source = "./modules"
}
module "instance" {
  source = "./module1"
}
