variable "s3_bucket_name" {
    default = "my-terraform-states-kcs"
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
    default = ["us-east-1", "us-east-2"]
}

variable "prod-lock-table" {
    default = "prod-terraform-state-lock"
    type = string
}

variable "dev-lock-table" {
    default = "dev-terraform-state-lock"
    type = string
}