# Create user using generic endpoint
resource "vault_generic_endpoint" "this" {
  namespace = var.namespace_path

  path                 = "auth/${var.auth_path}/users/${var.username}"
  ignore_absent_fields = true

  data_json = jsonencode({
    password = nonsensitive(var.password)
  })
}

# Associate auth userpass user as alias to identity
resource "vault_identity_entity_alias" "this" {
  namespace = var.namespace_path

  name = (
    var.alias_name != null
    ? var.alias_name
    : var.username
  )
  canonical_id   = var.canonical_id
  mount_accessor = var.mount_accessor
}
