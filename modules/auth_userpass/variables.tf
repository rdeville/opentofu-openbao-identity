# Module Specific variables
# -----------------------------------------------------------------------------
variable "namespace_path" {
  type        = string
  description = <<-EOM
  Namespace path where to deploy the identity if not the namespace set in the
  provider.
  EOM

  default = null
}

variable "auth_path" {
  type        = string
  description = <<-EOM
  The path of the userpass authentication backend to use. The auth userpass
  backend must exists.
  EOM
}

variable "alias_name" {
  type        = string
  description = <<-EOM
  Name of the alias to set for the identity. If not defined, will use the
  `username`.
  EOM

  default = null
}

variable "username" {
  type        = string
  description = "The username to set for the authString to set the name of the identity"
}

variable "password" {
  type        = string
  description = "The password to set for the username"

  sensitive = true
}

variable "mount_accessor" {
  type        = string
  description = <<-EOM
  Accessor of the mount to which the alias of the user created should belong to.
  EOM
}

variable "canonical_id" {
  type        = string
  description = "Entity ID to which this alias of the user created belongs to."
}
