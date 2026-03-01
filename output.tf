output "instance_private_ips" {
  value       = aws_instance.roboshop_ec2[*].private_ip
  description = "Private IP addresses of all EC2 instances"
}

output "private_ips" {
  value = {
    for name, inst in aws_instance.roboshop_ec2 :
    name => inst.private_ip
  }
}