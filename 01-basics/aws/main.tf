resource "aws_iam_group" "dev_aws_iam_group" {
  name = var.dev_iam_group_name
  path = var.dev_iam_group_path
}