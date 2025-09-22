# Create user using generic endpoint
resource "vault_generic_endpoint" "this" {
  namespace = var.namespace

  path                 = "auth/${data.vault_auth_backend.this}/users/${var.username}"
  ignore_absent_fields = true

  data_json = jsonencode({
    password = nonsensitive(var.password)
  })
}

# Associate auth userpass user as alias to identity
resource "vault_identity_entity_alias" "this" {
  namespace = var.namespace

  name = (
    var.alias_name != null
    ? var.alias_name
    : var.username
  )
  canonical_id   = var.canonical_id
  mount_accessor = var.mount_accessor
}
