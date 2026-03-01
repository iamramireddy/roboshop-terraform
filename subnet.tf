resource "aws_subnet" "roboshop_private_subnet" {
  vpc_id            = aws_vpc.roboshop_vpc.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = var.avail_zone

  tags = {
    Name = "${var.projectname}_private_subnet"
  }
}

resource "aws_subnet" "roboshop_public_subnet" {
  vpc_id            = aws_vpc.roboshop_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = var.avail_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.projectname}_public_subnet"
  }
}

#resource "aws_network_interface" "roboshop_ni" {
#  subnet_id   = aws_subnet.roboshop_private_subnet.id
#   private_ips = ["10.0.10.100"]

#  tags = {
#    Name = "${var.projectname}_network_interface"
#  }
#}