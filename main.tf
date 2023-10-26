provider "aws" {
  region = "us-west-2" # or another region suitable for you
}

module "my_s3_bucket" {
  source      = "./s3-module" # path to your module
  bucket_name = "my-unique-s3-bucket-name"   # ensure this bucket name is unique
}

output "s3_bucket_id" {
  value = module.my_s3_bucket.bucket_id
}
