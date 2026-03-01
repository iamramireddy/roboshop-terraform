resource "aws_instance" "roboshop_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.roboshop_public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_allow_tls.id]
  key_name = aws_key_pair.roboshop_key.key_name
 
 
  #network_interface {
  #  network_interface_id = aws_network_interface.roboshop_ni.id
  #  device_index         = 0
  #}

  tags = {
    Environment = var.environment
    Name = "${var.projectname}-ec2"
    Terraform = true
  }
}