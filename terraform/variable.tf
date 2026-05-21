variable "project" {
    type = string
    default = "roboshop"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "egress_from_port" {
    type = number
    default = 0
}

variable "egress_to_port" {
    type = number
    default = 0
}

variable "ingress_ports" {
    type = list(number)
    default = [22, 443, 80, 8080, 27017, 6379, 5672, 15672, 3306, 9000, 9090, 9100]
}

variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "instances" {
    type = list(string)
    default = ["mongodb", "redis", "mysql", "rabbitmq"]
}

variable "zone_id" {
    type = string
    default = "Z07930191W09SXLUZFTL0"
}

variable "domain_name" {
    type = string
    default = "devops-project.co.uk"
}