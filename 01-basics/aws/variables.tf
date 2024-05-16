variable "dev_iam_group_name" {
  type        = string
  default     = "developers"
  description = "backend developers group"
}

variable "dev_iam_group_path" {
  type        = string
  default     = "/backend/"
  description = "backend developers group path"
}