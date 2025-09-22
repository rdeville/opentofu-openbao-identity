output "identity" {
  value       = vault_identity_entity.this
  description = "The deployed identity"
}

output "auth_userpass_username" {
  value = (
    length(module.vault_auth_userpass) == 1
    ? nonsensitive(module.vault_auth_userpass[0].user.username)
    : null
  )
  description = "The deployed username in an auth userpass backend"
}

output "auth_userpass_id" {
  value = (
    length(module.vault_auth_userpass) == 1
    ? module.vault_auth_userpass[0].user.id
    : null
  )
  description = "The deployed username in an auth userpass backend"
}

output "auth_userpass_password" {
  value = (
    length(module.vault_auth_userpass) == 1
    ? module.vault_auth_userpass[0].user.password
    : null
  )
  description = "The deployed username in an auth userpass backend"

  sensitive = true
}
