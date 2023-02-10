variable "google_group_name" {
  description = "Google Workspace Group Name"
  type        = string
}

variable "sso_permission_set_arn" {
  description = "Required, Forces new resource) The Amazon Resource Name (ARN) of the Permission Set that the admin wants to grant the principal access to."
  type        = string
}

variable "sso_permission_set_instance_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance"
  type        = string
}

variable "target_id" {
  description = "(Required, Forces new resource) An AWS account identifier, typically a 10-12 digit string."
  type        = list(string)
}
