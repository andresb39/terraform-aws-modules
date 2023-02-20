resource "aws_identitystore_group" "this" {
  display_name      = var.group_name
  description       = var.group_description
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
}
