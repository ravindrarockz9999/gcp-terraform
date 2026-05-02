variable "region"{
    type = string
    default = "us-central1"
}

variable "bucket_name"{
    type = string
    default = "my-palutla-bucket"
}

variable "vm_name"{
    type = string
    default = "github-vm"
}

variable "zone"{
    type = string
    default = "us-central1-a"
}

variable "machine_type"{
    type = string
    default = "e2-micro"
}

variable "cluster_name" {
  type = string
  default = "argocd-demo-cluster"
}
variable "node_count" {
  type = string
  default = 2
}
variable "machine_types" {
  type = string
  default = "e2-medium"
}