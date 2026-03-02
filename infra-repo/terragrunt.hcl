remote_state {
  backend = "s3"

  config = {
    bucket         = "ashwini-terraform-state-2026"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
