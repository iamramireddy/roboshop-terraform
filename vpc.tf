resource "aws_vpc" "roboshop_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "${var.projectname}-vpc"
  }
}
