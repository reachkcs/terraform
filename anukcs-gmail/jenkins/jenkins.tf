resource "aws_security_group" "jenkins_sg" {
  name        = "jenkins_security_group"
  description = "Allow inbound traffic on ports 22 and 8080"
  vpc_id      = module.networking.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["70.106.201.186/32"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Env       = var.env
    Terraform = true
  }
}

resource "aws_instance" "jenkins_instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = [aws_security_group.jenkins_sg.id]
  #security_groups = ["jenkins_security_group"]
  #subnet_id = var.subnet_id
  subnet_id                   = module.networking.public_subnet_ids[0]
  associate_public_ip_address = true

  user_data = templatefile("user_data.sh.tmpl", {
    region = var.region
  })

  tags = {
    Name      = "Jenkins"
    Env       = var.env
    Terraform = true
  }
}
