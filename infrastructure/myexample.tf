variable "TestSNS" {
  type = string
}

resource "aws_instance" "example" {
  ami = "ami-0cc293023f983ed53"
  instance_type = "t2.micro"
  tags = {
    Name = var.TestSNS
  }
}

output "public_ip" {
  value       = aws_instance.example.public_ip
  description = "The public IP of the web server"
}
