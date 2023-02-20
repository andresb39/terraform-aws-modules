resource "aws_ssoadmin_account_assignment" "account_assignment" {
  for_each           = length(var.target_id) > 0 ? toset(var.target_id) : []
  instance_arn       = var.sso_permission_set_instance_arn
  permission_set_arn = var.sso_permission_set_arn
  principal_id       = var.group_name
  principal_type     = "GROUP"
  target_id          = each.value
  target_type        = "AWS_ACCOUNT"
}
