resource "aws_instance" "web_server" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = data.aws_subnet.selected_subnet.id
  associate_public_ip_address = true
  vpc_security_group_ids      = [data.aws_security_group.existing_sg_name.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "Hello, World from $(hostname -f)" > /var/www/html/index.html
            EOF

  tags = {
    Name        = var.ec2_name
    Environment = var.environment
  }
}