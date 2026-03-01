resource "aws_route_table" "roboshop_public_rt" {
  vpc_id = aws_vpc.roboshop_vpc.id
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.roboshop_igw.id
  }

  tags = {
    Name        = "${var.projectname}-public-rt"
    Terraform = true
  }
}


resource "aws_route_table_association" "roboshop_public_rt_assoc" {
  subnet_id      = aws_subnet.roboshop_public_subnet.id
  route_table_id = aws_route_table.roboshop_public_rt.id
}


