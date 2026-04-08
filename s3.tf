resource "aws_s3_bucket" "cerbarus_bucket" {
  bucket = local.s3-sufix  
}