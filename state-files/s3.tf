resource "aws_s3_bucket" "main" {
    bucket = "${var.s3_bucket_name}"

    tags = {
        "Terraform" = true
    }

}

