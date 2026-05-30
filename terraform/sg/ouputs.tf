output "sg_ids" {
    value = aws_security_group.roboshop_sg[*].id
}