<!-- BEGIN TF-DOCS -->
## ⚙️ Module Content

<details><summary>Click to reveal</summary>

### Table of Content

* [Requirements](#requirements)
* [Resources](#resources)
* [Inputs](#inputs)
  * [Required Inputs](#required-inputs)
  * [Optional Inputs](#optional-inputs)
* [Outputs](#outputs)

### Requirements

* [opentofu](https://opentofu.org/docs/):
  `>= 1.8, < 2.0`
* [vault](https://search.opentofu.org/provider/hashicorp/vault/):
  `~>5.3`

### Resources

* [resource.vault_generic_endpoint.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/generic_endpoint)
  > Create user using generic endpoint
* [resource.vault_identity_entity_alias.this](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/identity_entity_alias)
  > Associate auth userpass user as alias to identity

<!-- markdownlint-capture -->
### Inputs

<!-- markdownlint-disable -->
#### Required Inputs

* [auth_path](#auth_path)
* [username](#username)
* [password](#password)
* [mount_accessor](#mount_accessor)
* [canonical_id](#canonical_id)

##### `auth_path`

The path of the userpass authentication backend to use. The auth userpass
backend must exists.

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

##### `username`

The username to set for the authString to set the name of the identity
<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

##### `password`

The password to set for the username
<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

##### `mount_accessor`

Accessor of the mount to which the alias of the user created should belong to.

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

##### `canonical_id`

Entity ID to which this alias of the user created belongs to.
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
* [alias_name](#alias_name)


##### `namespace_path`

Namespace path where to deploy the identity if not the namespace set in the
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

##### `alias_name`

Name of the alias to set for the identity. If not defined, will use the
`username`.

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
<!-- markdownlint-restore -->

### Outputs

* `user`:
  The created user in the auth userpass backend.

</details>

<!-- END TF-DOCS -->
