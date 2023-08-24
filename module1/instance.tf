# Create an EC2 instance with the generated PEM file
resource "aws_instance" "instance" {
  ami = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name  = "tf-key-pair"
  tags = {
    Name = "instance"
  }
  user_data = file("./module1/apache.sh")
}

