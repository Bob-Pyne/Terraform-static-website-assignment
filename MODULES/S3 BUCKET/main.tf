# resource "aws_s3_bucket" "my-s3-Bucket" {
# }

resource "aws_s3_bucket" "cloudproject-bucket" {
  bucket= var.bucket_name
  force_destroy = true
}

resource "aws_s3_object" "myapp" {
    bucket=aws_s3_bucket.cloudproject-bucket.bucket
   for_each = fileset("modules/s3_bucket/myapp/", "**/*.*") 
   key = each.value
   source = "modules/s3_bucket/myapp/${each.value}"
   content_type = each.value

}