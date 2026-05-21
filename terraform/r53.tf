resource "aws_route53_record" "roboshop_records" {
    count = length(var.instances)
    zone_id = var.zone_id
    type = "A"
    ttl = 1
    name = "${var.instances[count.index]}.${var.domain_name}"
    records = [aws_instance.roboshop_instances[count.index].private_ip]
}


# resource "aws_route53_record" "roboshop_records" {
#     for_each = toset(var.instances)
#     zone_id = var.zone_id
#     type = "A"
#     ttl = 1
#     name = "${each.value}.${var.domain_name}"
#     records = [aws_instance.demo_instance[each.value].private_ip]
#     allow_overwrite = true
# }