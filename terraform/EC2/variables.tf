variable "subnet_ids" {
  description = "List of subnet IDs where EC2 instances will be launched"
  type        = list(string)
}

variable "sg_id" {
  description = "Security Group ID to attach to EC2 instances"
  type        = string
}

variable "instance_profile" {
  description = "IAM instance profile name for EC2 instances"
  type        = string
}
