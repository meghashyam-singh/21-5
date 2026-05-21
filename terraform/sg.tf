resource "aws_security_group" "roboshop_sg" {
    name = "${var.project}-${var.environment}-sg"
    description = "this security group allows roboshop project components only"

    egress {
        from_port = var.egress_from_port
        to_port = var.egress_to_port
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
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
        Name = "${var.project}-${var.environment}-sg"
    }
}