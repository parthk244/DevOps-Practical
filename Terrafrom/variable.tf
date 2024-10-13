variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "CIDR block for the VPC"
}

variable "public_subnet" {
  default = "10.0.1.0/24"
  description = "CIDR block for public subnet"
}

variable "availability_zone_1" {
  default = "us-east-2a"
  description = "Availability zone for public subnet"
}

variable "instance_type" {
  default = "t2.micro"
  description = "Instance type for the EC2 instance"
}

variable "key_name" {
  default = "dev"
  description = "Key pair name"
}

variable "ingress_rules" {
  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
  description = "List of ingress rules for the security group"
}
