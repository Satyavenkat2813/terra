resource "aws_instance" "example" {
  ami           = "ami-03cb1380eec7cc118" 
  instance_type = "t2.micro"
}
