# Module Specific variables
# -----------------------------------------------------------------------------
variable "namespace_path" {
  type        = string
  description = <<-EOM
  Namespace where to deploy the identity if not the namespace set in the
  provider.
  EOM

  default  = null
  nullable = true
}

variable "disabled" {
  type        = bool
  description = "Boolean to disable the identity"

  default  = false
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

variable "auth_userpass" {
  type = object({
    mount_accessor = string
    path           = string
  })

  description = <<-EOM
  Object describing auth userpass backend to use to deploy the user associated
  to the entity, supporting following attributes:
  * `mount_accessor`: String, accessor of the mount to which the alias of the
    user created should belong to.
  * `path`: String, the path of the userpass authentication backend to use. The
    auth userpass backend must exists.
  EOM

  default  = null
  nullable = true
}

variable "auth_userpass_user" {
  type = object({
    alias_name = optional(string, null)
    username   = optional(string, null)
    password   = string
  })
  description = <<-EOM
  Object to create an auth userpass entry for the identity. Will be set as an
  alias for the identity.
  The object support following attributes:
  * `username`: String, optional, username to set for the auth userpass backend,
    if not set, will use the name of the identity.
  * `password`: String, sensitive, the password to set for the user.
  * `alias_name`: String, optional, name of the alias to set for the identity.
    If not defined, will use the `username`.
  EOM

  default   = null
  nullable  = true
  sensitive = true
}
