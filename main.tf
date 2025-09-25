# Manage individual entities
resource "vault_identity_entity" "this" {
  namespace = try(data.vault_namespace.this[0].path, null)

  name     = var.name
  disabled = var.disabled
  metadata = merge([
    {
      email = var.email
    },
    var.metadata
  ]...)

  external_policies = true
  policies          = toset([])
}

# Set exclusive epmpty policy to ensure policies are set at group level
resource "vault_identity_entity_policies" "policies" {
  namespace = try(data.vault_namespace.this[0].path, null)

  policies  = [""]
  exclusive = true
  entity_id = vault_identity_entity.this.id
}

# Manage auth userpass associated to the identity
module "vault_auth_userpass" {
  source         = "./modules/auth_userpass"
  count          = var.auth_userpass_user == null ? 0 : 1
  namespace_path = try(data.vault_namespace.this[0].path, null)

  username = (
    var.auth_userpass_user.username != null
    ? var.auth_userpass_user.username
    : vault_identity_entity.this.name
  )
  password   = var.auth_userpass_user.password
  alias_name = var.auth_userpass_user.alias_name

  auth_path      = var.auth_userpass.path
  mount_accessor = var.auth_userpass.mount_accessor
  canonical_id   = vault_identity_entity.this.id
}
