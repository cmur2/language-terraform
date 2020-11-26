# taken from https://github.com/hashicorp/terraform/blob/master/examples/aws-s3-cross-account-access/main.tf

# TODO: this tests integration with language-todo

provider "aws" {
  alias = "prod"

  region     = "us-east-1"
  access_key = "${var.prod_access_key}"
  secret_key = "${var.prod_secret_key}"
  number     = 12
  example    = true
  list       = [true, false, 123, "$${var.foo.*} = ${var.foo.*}"]
}

// NOTE Another comment for a great resource
resource "aws_s3_bucket" "prod" {
  provider = "aws.prod"

  bucket = "${concat(var.bucket_name, 4 - 3)}"
  acl    = "private"
  policy = <<POLICY_YML
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "AllowTest",
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::${var.test_account_id}:root"
            },
            "Action": "s3:*",
            "Resource": "arn:aws:s3:::${var.bucket_name}/*"
        }
    ]
}
POLICY_YML
}

resource "aws_s3_bucket_object" "prod" {
  provider = "aws.prod"

  bucket = "${aws_s3_bucket.prod.id}"
  key    = "object-uploaded-via-prod-creds"
  source = "${path.module}/prod.txt"
}

provider "aws" {
  alias = "test"

  region     = "us-east-1"
  access_key = "${var.*.test_access_key}"
  secret_key = "${var.test_secret_key}"
}

output "instance_public_ip_addresses" {
  value = {
    for instance in aws_instance.example :
    instance.id => instance.public
    if instance.associate_public_ip_address
  }
}

resource "aws_subnet" "example" {
  for_each = var.subnet_numbers

  vpc_id            = aws_vpc.example.id
  availability_zone = each.key
  cidr_block        = cidrsubnet(aws_vpc.example.cidr_block, 8, each.value)
}

/*
 * FIXME(nobody): Nothing
 */
