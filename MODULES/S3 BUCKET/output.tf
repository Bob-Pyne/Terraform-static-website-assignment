

# output "acm-cert" {
#   value = aws_acm_certificate.cert.arn

output "s3-bucket" {
  value = module.aws_bucket
}