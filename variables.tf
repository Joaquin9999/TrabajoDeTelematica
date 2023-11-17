variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_ami" {
  description = "AMI ID for the instance"
  default     = "ami-053b0d53c279acc90"
}

variable "instance_key_name" {
  description = "Key pair name for the instance"
  default     = "appmovilllave"
}

variable "security_group_ids" {
  description = "List of security group IDs for the instance"
  default     = ["sg-0ed5bfd41d3dabf2d"]
}

variable "provisioning_file_source" {
  description = "Path to the source file for provisioning"
  default     = "Aplicacion.tar.gz"
}

variable "provisioning_file_destination" {
  description = "Path to the destination file for provisioning"
  default     = "C:/Users/USUARIO/OneDrive - UPB/Desktop/Universidad/Semestre 3/Telematica/APP/Aplicacion.zip"
}

variable "ssh_user" {
  description = "SSH user for connection"
  default     = "joaquin"
}

variable "private_key_path" {
  description = "Path to the private key file"
  default     = "C:/Users/USUARIO/OneDrive - UPB/Desktop/Universidad/Semestre 3/Telematica/APP/Aplicacion/appmovilllave.pem"
}
