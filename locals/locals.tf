locals {

  ami_id = "ami-09c813fb71547fc4f"
  sg_id = "sg-042ad1e82e90ec91b"
  #instance_type = "t3.micro"
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
  tags = {
    Name = "locals"
  }
}