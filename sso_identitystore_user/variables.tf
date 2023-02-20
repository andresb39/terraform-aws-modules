variable "username" {
  description = " (Required, Forces new resource) A unique string used to identify the user. This value can consist of letters, accented characters, symbols, numbers, and punctuation. This value is specified at the time the user is created and stored as an attribute of the user object in the identity store. The limit is 128 characters."
  type        = string
}

variable "display_name" {
  description = "(Required) The name that is typically displayed when the user is referenced."
  type        = string
}

variable "give_name" {
  description = "(Required) The given name of the user."
  type        = string
}

variable "family_name" {
  description = "(Required) The family name of the user."
  type        = string
}

variable "emails" {
  description = "The email address. This value must be unique across the identity store."
  type        = string
}

variable "group_id" {
  description = "(Required) The identifier for a group in the Identity Store."
  type        = list(string)
}
