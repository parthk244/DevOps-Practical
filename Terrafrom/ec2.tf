resource "aws_instance" "ec2_public" {
  ami                    = "ami-0ea3c35c5c3284d82"
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key_pair.key_name
  security_groups        = [aws_security_group.ssh_security_group.id]
  subnet_id              = aws_subnet.public_subnet.id
  associate_public_ip_address = true

 

  tags = {
    Name = "dev"
  }


}
