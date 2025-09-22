# Manage identity
resource "vault_identity_entity" "this" {
  namespace = var.namespace

  name     = var.name
  disabled = var.disabled
  metadata = merge([
    {
      email = var.email
    },
    var.metadata
  ]...)
}
