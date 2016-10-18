provider "aws" {
    profile = "${var.aws_profile}"
    region = "${var.aws_region}"
}

module "s3_bucket" {
    source = "./s3-bucket-module"

    bucket = "${var.bucket}"
    acl = "${var.acl}"
    environment = "${var.environment}"
}
