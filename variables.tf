variable "project" {
  default = "iacbramos" # Altere para o seu projeto
}

variable "credentials" {
  default = "credentials.json"
}

variable "region" {
  default = "southamerica-east1"
}

variable "zone" {
  default = "southamerica-east1-c"
}

variable "vm_instance" {
  default = "web"
}

variable "machine_type" {
  default = "f1-micro"
}

variable "image_os"{
 default = "centos-7"
}    

variable "ssh_user" {
  default = "bruno" # Altere para o seu usuário SSH
}
      
variable "ssh_key" {
    default = "~/.ssh/id_rsa.pub" # Informe o caminho da sua chave pública SSH
}

variable "vpc_network" {
  default = "vpc-web"
}

variable "fw_name" {
  default = "fw-web"
}

variable "fw_ports" {
  default = [21,22,80,443]
}     
