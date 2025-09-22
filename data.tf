# If specified, ensure namespace exists
data "vault_namespace" "this" {
  count = var.namespace_path != null ? 1 : 0

  path = var.namespace_path
}
