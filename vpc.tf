resource "aws_vpc" "example" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_hostnames = true
    enable_dns_support   = true
}

resource "aws_subnet" "public_a" {
    vpc_id                  = aws_vpc.example.id
    cidr_block              = "10.0.1.0/24"
    map_public_ip_on_launch = true
    availability_zone       = "ap-northeast-1a"
}

resource "aws_subnet" "public_c" {
    vpc_id                  = aws_vpc.example.id
    cidr_block              = "10.0.2.0/24"
    map_public_ip_on_launch = true
    availability_zone       = "ap-northeast-1c"
}

resource "aws_subnet" "public_a_web" {
    vpc_id                  = aws_vpc.example.id
    cidr_block              = "10.0.3.0/24"
    map_public_ip_on_launch = true
    availability_zone       = "ap-northeast-1a"
}

resource "aws_subnet" "public_c_web" {
    vpc_id                  = aws_vpc.example.id
    cidr_block              = "10.0.4.0/24"
    map_public_ip_on_launch = true
    availability_zone       = "ap-northeast-1c"
}