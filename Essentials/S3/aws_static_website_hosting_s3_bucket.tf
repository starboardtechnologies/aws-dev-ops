resource "aws_s3_bucket" "devops-s3-bucket-static-website-hosting" {
  acl    = var.s3_bucket_static_website_hosting_acl[count.index]
  bucket = var.s3_bucket_static_website_hosting_name[count.index]
  count  = 3
  tags = {
      Name = element(var.s3_bucket_static_website_hosting_tags, count.index)
  }

  versioning {
    enabled = var.s3_bucket_static_website_hosting_versioning[count.index]
  }

  website {
    index_document = "index.html"
    error_document = "error.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }
}
