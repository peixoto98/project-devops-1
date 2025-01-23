locals {
  tags = {
    DATABASE = "postgresql"
    PROJECT  = "PGSQL-HA"
  }
  region = "us-east-1"
  key_name = "public_key_ec2"
  ami = "ami-04b4f1a9cf54c11d0"
  instance_type = "t2.micro"
  count = 2
}