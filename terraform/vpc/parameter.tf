resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project}/${var.environment}/vpc_id"
    type = "String"
    value = aws_vpc.roboshop_vpc.id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
    name = "${var.project}/${var.environment}/public_subnet_ids"
    type = "StringList"
    value = aws_subnet.public[*].id
}

resource "aws_ssm_parameter" "private_subnet_ids" {
    name = "${var.project}/${var.environment}/private_subnet_ids"
    type = "StringList"
    value = aws_subnet.private[*].id
}

resource "aws_ssm_parameter" "database_subnet_ids" {
    name = "${var.project}/${var.environment}/database_subnet_ids"
    type = "StringList"
    value = aws_subnet.database[*].id
}