variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
  default     = "t3.micro"
}

variable "environment" {
  type        = string
  description = "Deployment environment name"
  default = "dev"
}  
 

variable "ami_id" {
  type        = string
  description = "AMI Id"
  default     = "ami-0f3caa1cf4417e51b"
} 

variable "projectname" {
  type        = string
  description = "Project Name"
  default     = "roboshop"
} 

variable "avail_zones" {
  type        = list(string)
  description = "Availability zones"
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "sg_cidr_blocks" {
  type        = list
  description = "cidr_blocks"
  default     = ["0.0.0.0/0"]
}

variable "instances_names" {
    type = list
    default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}
