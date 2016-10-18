provider "aws" {
    profile = "${var.aws_profile}"
    region = "${var.aws_region}"
}

resource "aws_s3_bucket" "AwsBucket" {
    bucket = "${var.bucket["name"]}"
    acl = "${var.bucket["acl"]}"

    tags {
        Name = "${var.bucket["name"]}"
        Environment = "${var.bucket["environment"]}"
    }
}
