# Ensure auth userpass backend exists
data "vault_auth_backend" "this" {
  namespace = var.namespace

  path = var.auth_path
}
