# Create a security group allowing SSH access
resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create the EC2 instance
resource "aws_instance" "example" {
  ami           = var.ec2_ami  # Specify the desired AMI ID
  instance_type = var.instance_type
  key_name      = "your-key-pair-name"     # Replace with your key pair name
  security_group_names = [aws_security_group.example.name]

  tags = {
    Name = "example-instance"
  }
}
