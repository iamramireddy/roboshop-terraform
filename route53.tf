# route53-data.tf (file name can be anything)
data "aws_route53_zone" "sdlc" {
  name         = "sdlc.store"
  private_zone = false
}


resource "aws_route53_record" "services" {

  for_each = {
    for idx, inst in aws_instance.roboshop_ec2 :
    var.instances_names[idx] => inst
  }
  zone_id = data.aws_route53_zone.sdlc.zone_id
  name = "${each.key}.sdlc.store"
  type = "A"
  ttl  = 300
  records = [each.value.private_ip]
}