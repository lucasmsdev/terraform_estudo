data "aws_caller_identity" "current" {}


resource "aws_s3_bucket" "remote-state" {

  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  versioning {
    enabled = true
  }

  tags = {
    Description = "Stores terraform remote state files"
    ManagedBy   = "Terraform"
  }



}


output "remote_state_bucket" {
    value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
    value = aws_s3_bucket.remote-state.arn
}
