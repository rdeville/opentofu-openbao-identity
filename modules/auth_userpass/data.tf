# If specified, ensure namespace exists
data "vault_namespace" "this" {
  count = var.namespace_path != null ? 1 : 0

  path = var.namespace_path
}

# Ensure auth userpass backend exists
data "vault_auth_backend" "this" {
  namespace = try(data.vault_namespace.this[0].path, null)

  path = var.auth_path
}
