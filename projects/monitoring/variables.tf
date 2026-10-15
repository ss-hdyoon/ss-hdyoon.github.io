variable "aws_region" { type = string, default = "ap-northeast-2" }
variable "instance_id" {
  type = string
  description = "Existing EC2 instance ID (i-...)"
  validation { condition = can(regex("^i-[0-9a-f]{8}([0-9a-f]{9})?$", var.instance_id)), error_message = "Specify a valid EC2 instance ID." }
}
variable "notification_email" { type = string, description = "SNS confirmation email address" }
