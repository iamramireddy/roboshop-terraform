
resource "aws_key_pair" "roboshop_key" {
  key_name   = "roboshop-key"
  public_key = file("roboshop-key.pub")
}

