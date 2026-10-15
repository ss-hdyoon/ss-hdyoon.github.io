terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}
provider "aws" { region = var.aws_region }
data "aws_availability_zones" "available" { state = "available" }
resource "aws_vpc" "demo" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = { Name = "portfolio-demo-vpc" }
}
resource "aws_subnet" "public" {
  vpc_id = aws_vpc.demo.id
  cidr_block = var.public_subnet_cidr
  availability_zone = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = false
  tags = { Name = "portfolio-demo-public-subnet" }
}
resource "aws_internet_gateway" "demo" {
  vpc_id = aws_vpc.demo.id
  tags = { Name = "portfolio-demo-igw" }
}
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.demo.id
  route { cidr_block = "0.0.0.0/0", gateway_id = aws_internet_gateway.demo.id }
  tags = { Name = "portfolio-demo-public-rt" }
}
resource "aws_route_table_association" "public" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
