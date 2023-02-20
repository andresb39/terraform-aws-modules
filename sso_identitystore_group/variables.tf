variable "group_name" {
  description = "A string containing the name of the group. This value is commonly displayed when the group is referenced."
  type        = string
}

variable "group_description" {
  description = "Optional) A string containing the description of the group."
  type        = string
  default     = ""
}
