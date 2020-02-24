variable "pscloud_env" {}
variable "pscloud_company" {}

variable "pscloud_ec2_ids" {
  type = list(object({
    instance_id  = string
    port          = number
  }))
}

variable "pscloud_lb_target_arn" {}