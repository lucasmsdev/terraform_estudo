resource "aws_s3_bucket" "example" {
    bucket = "my-bucket-tf-teste",
    
    tags = {
        Name = "bucket-teste",
        Environment = "Dev"
    }
}