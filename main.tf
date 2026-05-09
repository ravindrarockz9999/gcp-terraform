provider "google"{
    project = "terraform-palutla"
    region = var.region
}

resource "google_storage_bucket" "bucket"{
    name = var.bucket_name
    location = var.region
    uniform_bucket_level_access = true
}

resource "google_compute_instance" "vm"{
    name = var.vm_name
    zone = var.zone
    machine_type = var.machine_type
    boot_disk{
            initialize_params {
               image = "debian-cloud/debian-11"
            }
    }
    network_interface{
        network = "default"
        access_config {}
    }
    metadata_startup_script = <<-EOF
 #!/bin/bash

 sudo apt-get update -y

 # install docker
 sudo apt-get install -y docker.io git

 # start docker
 sudo systemctl start docker
 sudo systemctl enable docker

 #copy github repo
 cd /home
 git clone https://github.com/ravindrarockz9999/my-website.git
 cd my-website

 # Build docker image
 docker build -t my-website .

 # Run the container
 docker run -d -p 80:80 my-website
 EOF
}
