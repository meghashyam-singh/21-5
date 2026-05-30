resource "aws_security_group" "roboshop_sg" {
    count = length(var.sg_names)
    name = "${local.common_name}-${var.sg_names[count.index]}"
    description = "roboshop-ports"

    vpc_id = local.vpc_id

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${local.common_name}-${var.sg_names[count.index]}"
    }

}