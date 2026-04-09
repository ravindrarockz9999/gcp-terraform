provider "google"{
    project = "terraform-palutla"
    region = var.region

resource "google_storage_bucket" "bucket"{
    name = var.bucket_name
    location = var.region
}