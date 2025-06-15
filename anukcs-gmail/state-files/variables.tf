variable "s3_bucket_name" {
    default = "terraform-states-kcs"
    description = "Name of the S3 bucket"
    type = string
}

variable "s3_tags" {
    type = map

    default = {
        "Terraform" = true
    }
}

variable "s3_regions" {
    type = list
    default = ["us-east-1"]
}

variable "lock-table" {
    default = "terraform-state-lock"
    type = string
}
