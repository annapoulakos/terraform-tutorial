variable "aws_profile" {
    default = "default"
}

variable "aws_region" {
    default = "us-east-1"
}

variable "bucket" {
    type = "map"

    default = {
        name = "jimpoulakos_test_bucket"
        acl = "private"
        environment = "demo"
    }
}
