
resource "aws_lb_target_group_attachment" "pscloud-lb-tg-attachment" {
  count                 = length(var.pscloud_ec2_ids)

  target_group_arn      = var.pscloud_lb_target_arn
  target_id             = var.pscloud_ec2_ids[count.index].instance_id
  port                  = var.pscloud_ec2_ids[count.index].port
}