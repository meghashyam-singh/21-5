locals {
    ami_id = data.aws_ami.roboshop.id
    instance_type = var.environment == dev ? "t3.micro" : "t3.medium"
}