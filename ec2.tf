resource "aws_instance" "roboshop_ec2" {
  ami           = "ami-0f3caa1cf4417e51b" # us-east-1
  instance_type = "t3.micro"
  subnet_id = aws_subnet.roboshop_public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_allow_tls.id]
  key_name = aws_key_pair.roboshop_key.key_name
  #network_interface {
  #  network_interface_id = aws_network_interface.roboshop_ni.id
  #  device_index         = 0
  #}

  tags = {
    Name = "roboshop-ec2"
  }
}