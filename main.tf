provider "aws" {
  region = local.region
}

resource "aws_key_pair" "id_rsa_public" {
  key_name   = local.key_name
  public_key = file("~/.ssh/id_ed25519.pub")
}

resource "aws_instance" "postgresql" {
  ami           = local.ami
  count         = local.count
  instance_type = local.instance_type
  key_name      = local.key_name

  tags = local.tags
}

resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/templates/hosts.tpl",
    {
      instances = aws_instance.postgresql[*].public_ip
    }
  )
  filename = "${path.module}/templates/hosts.cfg"
}
