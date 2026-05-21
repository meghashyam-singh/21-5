output "public_ip" {
    value = aws_instance.roboshop_instances[*].public_ip
}

output "private_ip" {
    value = aws_instance.roboshop_instances[*].private_ip
}

output "sg_id" {
    value = aws_security_group.roboshop_sg.id
}

output "r53-records" {
    value = aws_route53_record.roboshop_record[*].name
}