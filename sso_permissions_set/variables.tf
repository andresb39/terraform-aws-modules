variable "group_name" {
  description = "Group name"
  type        = string
  default     = ""
}

variable "description" {
  description = "Permissions set group description"
  type        = string
  default     = ""
}

variable "session_duration" {
  description = "The length of time that the application user sessions are valid in the ISO-8601 standard. Default: PT1H"
  type        = string
  default     = "PT2H"
}

variable "policy_attachment" {
  description = "ARN of the policy attachment"
  type        = list(string)
  default     = []
}

variable "inline_policy" {
  description = "Inline policies JSON to attach to SSO Permissions Set"
  type        = string
  default     = ""
}

// Tags
variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}
