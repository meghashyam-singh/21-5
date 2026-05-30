resource "aws_security_group" "roboshop_sg" {
    name = "${local.common_name}-sg"
    description = "roboshop ports"

    vpc_id = aws_vpc.roboshop_vpc.id

    egress {
        from_port = 0
        to_port = 0
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "-1"
    }

    dynamic "ingress" {
        for_each = var.ingress_ports
        content {
            from_port = ingress.value
            to_port = ingress.value
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }

    tags = {
        Name = "${local.common_name}-sg"
    }
}