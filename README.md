<!-- BEGIN DOTGIT-SYNC BLOCK MANAGED -->
<!-- markdownlint-disable -->

# 👋 Welcome to OpenBao Identity

<center>

> ⚠️ IMPORTANT !
>
> Main repo is on [framagit.org](https://framagit.org/rdeville-public/opentofu/openbao-identity).
>
> On other online git platforms, they are just mirror of the main repo.
>
> Any issues, pull/merge requests, etc., might not be considered on those other
> platforms.

</center>

---

<center>

[![Licenses: (MIT OR BEERWARE)][license_badge]][license_url]
[![Changelog][changelog_badge]][changelog_badge_url]
[![Build][build_badge]][build_badge_url]
[![Release][release_badge]][release_badge_url]

</center>

[build_badge]: https://framagit.org/rdeville-public/opentofu/openbao-identity/badges/main/pipeline.svg
[build_badge_url]: https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commits/main
[release_badge]: https://framagit.org/rdeville-public/opentofu/openbao-identity/-/badges/release.svg
[release_badge_url]: https://framagit.org/rdeville-public/opentofu/openbao-identity/-/releases/
[license_badge]: https://img.shields.io/badge/Licenses-MIT%20OR%20BEERWARE-blue
[license_url]: https://framagit.org/rdeville-public/opentofu/openbao-identity/blob/main/LICENSE
[changelog_badge]: https://img.shields.io/badge/Changelog-Python%20Semantic%20Release-yellow
[changelog_badge_url]: https://github.com/python-semantic-release/python-semantic-release

Deployment and management of Identity, Aliases and Auth Backend

---

<!-- BEGIN DOTGIT-SYNC BLOCK EXCLUDED CUSTOM_README -->

## 🚀 Usage

### ℹ️ Identity Entity Policies

I consider individual identity entity should not have any policies attached
individually.

**So, policies for identity entities are hardcoded and set to an empty list to
ensure this behaviour by design.**

I you want to manage policies per identity, feel free to fork this project and
add variables definition and update the module accordingly.

Identity entity should belong to a group holding policies.

For instance, this can be achieve using my other openbao modules:

- [OpenBao Policies](https://framagit.org/rdeville-public/opentofu/openbao-policies.git)
- [OpenBao Group](https://framagit.org/rdeville-public/opentofu/openbao-group.git)

### ⚠️ Prerequisite

To deploy resources, the identity defined in the provider configuration must
have enough permission.

The policies can be attached individually or to the groups to which below the
identity.

See [OpenBao Documentation - Policy](https://openbao.org/docs/concepts/policies/)
for more information.

### Deploy an identity

```hcl
module "identity" {
  source = "git::https://framagit.org/rdeville-public/opentofu/openbao-identity.git"

  # Required variables
  name  = "Foo"
  email = "foo@domain.tld"
}
```

### Add metadata to an identity

```hcl
module "identity" {
  source = "git::https://framagit.org/rdeville-public/opentofu/openbao-identity.git"

  # Required variables
  name  = "Foo"
  email = "foo@domain.tld"

  # Example values
  metadata = {
    key = "value"
  }
}
```

### Disable a deployed an identity

```hcl
module "identity" {
  source = "git::https://framagit.org/rdeville-public/opentofu/openbao-identity.git"

  # Required variables
  name  = "Foo"
  email = "foo@domain.tld"

  # Example values
  disabled = true  # Default is `false`
}
```

### Deploy an identity in another namespace

This usage required the namespace exists.

```hcl
module "identity" {
  source = "git::https://framagit.org/rdeville-public/opentofu/openbao-identity.git"

  # Required variables
  name  = "foo"
  email = "foo@domain.tld"

  # Example values
  namespace = "bar"
}
```

### Deploy a user in auth userpass backend

Deployment of a user in auth userpass backend will automatically alias it to the
identity. This is done by the submodule
[modules/auth_userpass](./modules/auth_userpass/READ).

```hcl
module "identity" {
  source = "git::https://framagit.org/rdeville-public/opentofu/openbao-identity.git"

  # Required variables
  name  = "foo"
  email = "foo@domain.tld"

  # Example values
  namespace = "bar"
  auth_userpass_user = {
    # If username and alias_name below is not specify, will use identity name
    username = "another-user"
    alias_name = "foo-user-pass"
    password = "[REDACTED]"
  }
  auth_userpass = {
    mount_accessor = "auth_userpass_12345678"
    path           = "userpass"
  }
}
```

<!-- BEGIN TF-DOCS -->
## ⚙️ Module Content

<details><summary>Click to reveal</summary>

### Table of Content

* [Requirements](#requirements)
* [Resources](#resources)
* [Modules](#modules)
* [Inputs](#inputs)
  * [Required Inputs](#required-inputs)
  * [Optional Inputs](#optional-inputs)
* [Outputs](#outputs)

### Requirements

* [opentofu](https://opentofu.org/docs/):
  `>= 1.8, < 2.0`
* [vault](https://search.opentofu.org/provider/hashicorp/vault/):
  `~>5.3`

### Data Sources

* [data.vault_namespace.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/namespace)
  > If specified, ensure namespace exists

### Resources

* [resource.vault_identity_entity.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/identity_entity)
  >

### Modules

* [vault_auth_userpass](./modules/auth_userpass)
  > Manage auth userpass associated to the identity

<!-- markdownlint-capture -->
### Inputs

<!-- markdownlint-disable -->
#### Required Inputs

* [name](#name)
* [email](#email)

##### `name`

String to set the name of the identity
<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

##### `email`

String to set email of the username, will be set as metadata of the identity

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

#### Optional Inputs

* [namespace_path](#namespace_path)
* [disabled](#disabled)
* [metadata](#metadata)
* [auth_userpass](#auth_userpass)
* [auth_userpass_user](#auth_userpass_user)


##### `namespace_path`

Namespace where to deploy the identity if not the namespace set in the
provider.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `disabled`

Boolean to disable the identity
<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  false
  ```

  </div>
</details>

##### `metadata`

Map of string to add additional metadata to set for the identity

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  map(string)
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  {}
  ```

  </div>
</details>

##### `auth_userpass`

Object describing auth userpass backend to use to deploy the user associated
to the entity, supporting following attributes:
* `mount_accessor`: String, accessor of the mount to which the alias of the
  user created should belong to.
* `path`: String, the path of the userpass authentication backend to use. The
  auth userpass backend must exists.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  object({
    mount_accessor = string
    path           = string
  })
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `auth_userpass_user`

Object to create an auth userpass entry for the identity. Will be set as an
alias for the identity.
The object support following attributes:
* `username`: String, optional, username to set for the auth userpass backend,
  if not set, will use the name of the identity.
* `password`: String, sensitive, the password to set for the user.
* `alias_name`: String, optional, name of the alias to set for the identity.
  If not defined, will use the `username`.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  object({
    alias_name = optional(string, null)
    username   = optional(string, null)
    password   = string
  })
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>
<!-- markdownlint-restore -->

### Outputs

* `identity`:
  The deployed identity
* `auth_userpass_username`:
  The deployed username in an auth userpass backend
* `auth_userpass_id`:
  The deployed username in an auth userpass backend
* `auth_userpass_password`:
  The deployed username in an auth userpass backend

</details>

<!-- END TF-DOCS -->
<!-- END DOTGIT-SYNC BLOCK EXCLUDED CUSTOM_README -->

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check [issues page][issues_pages].

You can also take a look at the [CONTRIBUTING.md][contributing].

[issues_pages]: https://framagit.org/rdeville-public/opentofu/openbao-identity/-/issues
[contributing]: https://framagit.org/rdeville-public/opentofu/openbao-identity/blob/main/CONTRIBUTING.md

## 👤 Maintainers

- 📧 [**Romain Deville** \<code@romaindeville.fr\>](mailto:code@romaindeville.fr)
  - Website: [https://romaindeville.fr](https://romaindeville.fr)
  - Github: [@rdeville](https://github.com/rdeville)
  - Gitlab: [@r.deville](https://gitlab.com/r.deville)
  - Framagit: [@rdeville](https://framagit.org/rdeville)

## 📝 License

Copyright © 2025

- [Romain Deville \<code@romaindeville.fr\>](code@romaindeville.fr)

This project is under following licenses (**OR**) :

- [MIT][main_license]
- [BEERWARE][beerware_license]

[main_license]: https://framagit.org/rdeville-public/opentofu/openbao-identity/blob/main/LICENSE
[beerware_license]: https://framagit.org/rdeville-public/opentofu/openbao-identity/blob/main/LICENSE.BEERWARE

<!-- END DOTGIT-SYNC BLOCK MANAGED -->
