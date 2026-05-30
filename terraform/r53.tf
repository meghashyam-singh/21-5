resource "aws_route53_record" "roboshop_records" {
    zone_id = "Z07930191W09SXLUZFTL0"
    count = length(var.instances)
    type = "A"
    ttl = 1
    name = "${var.instances[count.index]}.${var.domain_name}"
    records = [aws_instance.roboshop_instances[count.index].private_ip]
}