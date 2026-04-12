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
    name = "github-vm"
    zone = "us-central1-a"
    boot_disk{
            initialize_params {
               image = "debian-cloud/debian11"
            }
    }
    network_interface{
        network = "default"
    }
}
