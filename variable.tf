## variable of vpc

variable "cidr_block" {
    default = "10.0.0.0/16"
  
}

variable "Environment" {
    type = string
  
}

variable "common_tags" {
    type = map
  
}

variable "vpc_tags" {
    default = {}
    
  
}

variable "project_name" {
  type =  string
}

### igw variable

variable "igw_tags" {
    default = {}
  
}

## public_subnet variable

variable "public_subnet_cidrs" {
  validation{
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "please provide two public_subnet_cidrs"
  }  
}

variable "public_subnet_cidrs_tags" {
    default = {}
  
}

### private_subnet variable


variable "private_subnet_cidrs" {
  validation{
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "please provide two private_subnet_cidrs"
  }  
}

variable "private_subnet_cidrs_tags" {
    default = {}
  
}

## database_subnet variable

variable "database_subnet_cidrs" {
    validation {
      condition = length(var.database_subnet_cidrs) == 2
      error_message = "please provide the two database_subnet_cidrs"
    }
  
}

variable "database_subnet_cidrs_tags" {
    default = {}
  
}

## nat gateway
variable "aws_nat_gateway_tags" {
    default = {}
  
}

## public_route_table

variable "public_route_table_tags" {
    default = {}
  
}

## private_route_table

variable "private_route_table_tags" {
    default = {}
  
}

## database_route_table
variable "database_route_cidrs_tags" {
    default = {}
  
}

## peering variable



variable "is_peering_required" {
    default = false
  
}


variable "acceptor_vpc_id" {
 
 default = ""
  
}

variable "peering_connection_tags" {
    default = {}
  
}

## database groups variable
variable "database_default_tags" {
    default = {}
  
}