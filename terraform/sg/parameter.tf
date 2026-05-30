# resource "aws_ssm_parameter" "sg_ids" {
#     name = "${var.project}/${var.environment}/sg_ids"
#     type = "StringList"
#     value = aws_security_group.roboshop_sg[*].id
# }