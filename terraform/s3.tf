locals {
  mime_types = {
    htm  = "text/html"
    html = "text/html"
    css  = "text/css"
    ttf  = "font/ttf"
    js   = "application/javascript"
    map  = "application/javascript"
    json = "application/json"
    png  = "image/png"
  }
}

resource "aws_s3_bucket" "cv-bucket" {
  bucket = "crc-cv-bucket"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "404.html"
  }
}

resource "aws_s3_bucket_object" "cv-upload" {
  bucket   = aws_s3_bucket.cv-bucket.id
  for_each = fileset("../dist/", "**/*")

  key          = each.value
  source       = "../dist/${each.value}"
  etag         = filemd5("../dist/${each.value}")
  content_type = lookup(local.mime_types, split(".", each.value)[length(split(".", each.value)) - 1])
}

resource "aws_s3_bucket_policy" "cv-bucket-policy" {
  bucket = aws_s3_bucket.cv-bucket.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "CvBucketPolicy",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
          "s3:GetObject"
      ],
      "Resource": "arn:aws:s3:::crc-cv-bucket/*"
    }
  ]
}
POLICY
}
