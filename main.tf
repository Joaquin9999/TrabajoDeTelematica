terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

resource "aws_instance" "app_server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "appmovilllave"
  vpc_security_group_ids      = ["sg-0ed5bfd41d3dabf2d"]
  associate_public_ip_address = true

  provisioner "file" {
    source      = "Aplicacion.tar.gz"
    destination = "C:/Users/USUARIO/OneDrive - UPB/Desktop/Universidad/Semestre 3/Telematica/APP/Aplicacion.zip"
  }

  provisioner "remote-exec" {
    inline = [
      "tar -xvf C:/Users/USUARIO/OneDrive - UPB/Desktop/Universidad/Semestre 3/Telematica/APP/Aplicacion.zip",
      "sudo C:/Users/USUARIO/OneDrive - UPB/Desktop/Universidad/Semestre 3/Telematica/APP/Aplicacion/script.sh",
    ]
  }

  connection {
    type        = "ssh"
    user        = "joaquin"
    private_key = file("C:/Users/USUARIO/OneDrive - UPB/Desktop/Universidad/Semestre 3/Telematica/APP/Aplicacion/appmovilllave.pem")
    host        = self.public_ip
  }

  tags = {
    Name = "EjemploCsalon"
  }
}
