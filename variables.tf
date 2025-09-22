# Module Specific variables
# -----------------------------------------------------------------------------
variable "namespace" {
  type        = string
  description = <<-EOM
  Namespace where to deploy the identity if not the namespace set in the
  provider.
  EOM

  default  = null
  nullable = true
}

variable "name" {
  type        = string
  description = "String to set the name of the identity"
}

variable "email" {
  type        = string
  description = <<-EOM
  String to set email of the username, will be set as metadata of the identity
  EOM
}

variable "metadata" {
  type        = map(string)
  description = <<-EOM
  Map of string to add additional metadata to set for the identity
  EOM

  default  = {}
  nullable = true
}

variable "disabled" {
  type        = bool
  description = "Boolean to disable the identity"

  default  = false
  nullable = true
}
