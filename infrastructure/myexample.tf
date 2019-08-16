resource "aws_instance" "example" {
  ami = "ami-8803e0f0"
  instance_type = "t2.micro"
}

output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP of the web server"
}
