resource "aws_instance" "roboshop_instances" {
    count = length(var.instances)
    ami = local.ami_id
    instance_type = local.instance_type
    subnet_id = aws_subnet.database[count.index % length(var.az)].id
    vpc_security_group_ids = [aws_security_group.roboshop_sg.id]
    tags = {
        Name = "${local.common_name}-${var.instances[count.index]}"
    }
}