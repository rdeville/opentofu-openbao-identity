output "user" {
  value = {
    username = var.username
    password = var.password
    id       = vault_generic_endpoint.this.id
  }
  description = "The created user in the auth userpass backend."

  sensitive = true
}
