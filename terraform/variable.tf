variable "project" {
    default = "roboshop"
    type = string
}

variable "environment" {
    default = "dev"
    type = string
}

variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "az" {
    type = list(string)
    default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidr_block" {
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidr_block" {
    type = list(string)
    default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidr_block" {
    type = list(string)
    default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "ingress_ports" {
    type = list(number)
    default = [22, 80, 8080, 443]
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

variable "domain_name" {
    type = string
    default = "devops-project.co.uk"
}