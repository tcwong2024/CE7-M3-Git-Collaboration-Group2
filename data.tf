# EC2 instance
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

# Security group name
data "aws_security_group" "existing_sg_name" {
  filter {
    name = "tag:Name"
    values = [var.sg_name]
  }
}

# subnet name
data "aws_subnet" "selected_subnet" {
  filter {
    name   = "tag:Name"
    values = [var.subnet_name]
  }
}