terraform{
   backend "gcs" {
    bucket = "tf-state-palutla"
    prefix = "terraform/statefile"
   }
}
