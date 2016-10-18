provider "aws" {
    profile = "${var.aws_profile}"
    region = "${var.aws_region}"
}

resource "aws_s3_bucket" "AwsBucket" {
    count = 3

    bucket = "${var.bucket["name"]}-${count.index}"
    acl = "${var.bucket["acl"]}"

    tags {
        Name = "${var.bucket["name"]}-${count.index}"
        Environment = "${var.bucket["environment"]}"
    }
}
