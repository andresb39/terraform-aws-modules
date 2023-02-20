output "group_name" {
  value       = aws_identitystore_group.this.group_id
  description = "AWS identity store group name"
}
