terraform {

  backend "s3" {
    bucket  = "tfstate-123397473722"
    key     = "dev/01-usando-remote-state/terraform.tfstate"
    region  = "us-east-1"
    
  }
}
