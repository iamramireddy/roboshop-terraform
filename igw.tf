resource "aws_internet_gateway" "roboshop_igw" {
  vpc_id            = aws_vpc.roboshop_vpc.id

  tags = {
    Name = "roboshop-igw"
  }
}