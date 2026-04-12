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