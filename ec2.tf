resource "aws_instance" "roboshop_ec2" {
  count = length(var.instances_names)
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = aws_subnet.roboshop_public_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_allow_tls.id]
  key_name = aws_key_pair.roboshop_key.key_name
 

  tags = {
    Environment = var.environment
    #Name = var.instances_names."${var.projectname}-ec2"
    Name = "${var.projectname}-${var.instances_names[count.index]}-ec2"
    Terraform = true
  }
}