# Create an EC2 instance with the generated PEM file
resource "aws_instance" "instance1" {
  ami = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name  = "tf-key-pair"
  tags = {
    Name = "instance1"
  }
  user_data = file("./modules/nginx.sh")
}
