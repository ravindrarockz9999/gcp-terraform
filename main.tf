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
               image = "debian-cloud/debian11"
            }
    }
    network_interface{
        network = "default"
    }
}
