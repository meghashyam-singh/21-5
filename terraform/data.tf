data "aws_ami" "query" {
    owners = ["973714476881"]
    most_recent = true

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }

    filter {
        name = "architecture"
        values = ["x86_64"]
    }

    filter {
        name = "root-device-name"
        values = ["/dev/sda1"]
    }
}