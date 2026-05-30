locals {
    common_name = "${var.project}-${var.environment}"
    instance_type = var.environment == "dev" ? "t3.micro" : "t3.medium"
    ami_id = data.aws_ami.query.id
}