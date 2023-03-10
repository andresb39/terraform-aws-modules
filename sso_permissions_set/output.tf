output "group_id" {
  value       = aws_ssoadmin_permission_set.sso_permission_set.id
  description = "SSO Permission set Group ID"
}

output "instance_arn" {
  value       = aws_ssoadmin_permission_set.sso_permission_set.instance_arn
  description = "SSO Permission set Instance ARN"
}

output "arn" {
  value       = aws_ssoadmin_permission_set.sso_permission_set.arn
  description = "SSO Permission set ARN"
}
