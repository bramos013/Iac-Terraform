terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "bramos"
      # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "iacbramos"
    }
  }
}

provider "google" {
    credentials = "${var.credentials}"
    project = "${var.project}"
    region = "${var.region}"
    zone = "${var.zone}"
}

resource "google_compute_instance" "vm_instance" {
    name = "${var.vm_instance}"
    machine_type = "${var.machine_type}"

  boot_disk {
    initialize_params {
      image = "${var.image_os}"
    }
  }  
   
  #  metadata = {
   #   "sshkeys" = "${var.ssh_user}:${file(var.ssh_key)}"
    #}

    metadata_startup_script = "yum install -y nginx; systemctl start nginx"

  network_interface {    
    network = "default"
    access_config {
    }
  }
    provisioner "local-exec" {    
    command = "sed -i '2s/$/${self.network_interface.0.access_config.0.nat_ip}/' test.sh"    
  }
}

resource "google_compute_firewall" "firewall" {
  name = "${var.fw_name}"
  network = "default"

  allow {
    protocol = "tcp"
    ports = "${var.fw_ports}"
  }
}