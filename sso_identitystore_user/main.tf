resource "aws_identitystore_user" "this" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]

  display_name = var.display_name
  user_name    = var.username

  name {
    given_name  = var.give_name
    family_name = var.family_name
  }

  emails {
    value = var.emails
  }
}

resource "aws_identitystore_group_membership" "example" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso.identity_store_ids)[0]
  group_id          = var.group_id
  member_id         = aws_identitystore_user.this.user_id
}
