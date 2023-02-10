output "group_id" {
  value       = aws_ssoadmin_permission_set.sso_permission_set.id
  description = "SSO Permission set Group ID"
}
