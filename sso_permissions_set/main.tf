resource "aws_ssoadmin_permission_set" "sso_permission_set" {
  name             = var.group_name
  instance_arn     = tolist(data.aws_ssoadmin_instances.sso.arns)[0]
  description      = var.description
  session_duration = var.session_duration
  tags             = var.tags
}

resource "aws_ssoadmin_managed_policy_attachment" "sso_policy_attachment" {
  count              = length(var.policy_attachment)
  instance_arn       = aws_ssoadmin_permission_set.sso_permission_set.instance_arn
  managed_policy_arn = var.policy_attachment[count.index]
  permission_set_arn = aws_ssoadmin_permission_set.sso_permission_set.arn
}

resource "aws_ssoadmin_permission_set_inline_policy" "sso_inline_policy" {
  count              = var.inline_policy > 0 ? 1 : 0
  inline_policy      = var.inline_policy
  instance_arn       = aws_ssoadmin_permission_set.sso_permission_set.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.sso_permission_set.arn
}
