resource "aws_s3_bucket" "AwsBucket" {
    bucket = "${var.bucket}"
    acl = "${var.acl}"

    tags {
        Name = "${var.bucket}"
        Environment = "${var.environment}"
    }
}

output "AwsBucket_id" {
    value = "${aws_s3_bucket.AwsBucket.id}"
}

output "AwsBucket_arn" {
    value = "${aws_s3_bucket.AwsBucket.arn}"
}

output "AwsBucket_region" {
    value = "${aws_s3_bucket.AwsBucket.region}"
}
