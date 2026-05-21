resource "aws_instance" "roboshop_instances" {
    count = length(var.instances)
    ami = local.ami_id
    instance_type = local.instance_type
    vpc_security_group_ids = [aws_security_group.roboshop_sg.id]
    tags = {
        Name = "${var.instances[count.index]}-${var.project}-${var.environment}-instance"
    }

    # provisioner "local-exec" {
    #     command = "yum install git -y"
    #     on_failure = continue
    # }

    # provisioner "local-exec" {
    #     command = "echo ${self.public_ip} >> inventory"
    #     on_failure = continue
    # }

    # connection {
    #     host = self.public_ip
    #     type = "ssh"
    #     user = "ec2-user"
    #     password = "DevOps321"
    #     # private_key = file(/home/ec2-user/my_private_key)
    # }

    # provisioner "remote-exec" {
    #     inline = [
    #         "yum install git -y",
    #         "yum install java-17-amazon-corretto -y"
    #     ]
    # }

    # provisioner "remote-exec" {
    #     inline = var.instances[count.index] == "mongodb" ? [
    #         "yum install git -y",
    #         "yum install java-17-amazon-corretto -y"
    #     ] : ["echo skip"]
    # }
}


# resource "aws_instance" "roboshop_instances" {
#     for_each = toset(var.instances)
#     ami = local.ami_id
#     instance_type = local.instance_type
#     vpc_security_group_ids = [aws_security_group.roboshop_sg.id]
#     tags = {
#         Name = "${each.value}-${var.project}-${var.environment}-instance"
#     }
# }