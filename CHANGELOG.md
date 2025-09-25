<!-- markdownlint-disable-file -->
# CHANGELOG

## v0.2.3 (2025-09-25)

### 🩹 Patch

  * ⚡️ Add resource to enforce empty policies for individual entities (!6) by Romain Deville ([`74041f7`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/74041f71e0197176d53011fe8dd25b3499a885b1))
  * ⚡️ Add resource to ensure empty policies for individual entities by Romain Deville ([`57d42e0`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/57d42e0678291061858e0ac3800cd1e3a7d3da41)) 🔏

### 🔊 Others

  * 💡 Add missing comment for terraform-docs by Romain Deville ([`d16a2ef`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/d16a2efd94082cf60d467b387bfc2d8a061da4e7)) 🔏
  * 📝 Update README generated from tf-docs by Romain Deville ([`d8d01c9`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/d8d01c9d5e300b31788b74fa5eff0d14175b94f6)) 🔏

## v0.2.2 (2025-09-22)

### 🩹 Patch

  * ⚡️ Use data `vault_namespace` to ensure namespace exists (!5) by Romain Deville ([`8b6aebf`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/8b6aebfd8ee6179ebe6ae85ecdc6dbd20cfc57c1))
  * ⚡️ Use data `vault_namespace` to ensure namespace exists by Romain Deville ([`64bc889`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/64bc88947a6d89764cb1aff56e5f57c1c1f1a318)) 🔏
  * ⚡️(auth_userpass): Use data `vault_namespace` to ensure namespace exists by Romain Deville ([`7e9579c`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/7e9579c97dfb7d477b34a2613e906a1a6205a2a4)) 🔏

### 🔊 Others

  * 📝 Update README with info about policies and generated from terraform-docs by Romain Deville ([`fee4dd7`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/fee4dd78d04003cb71220e39b0b7f6aa78b7304c)) 🔏
  * 📝(auth_userpass): Update README with terraform-docs by Romain Deville ([`8ff2a3f`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/8ff2a3f5b007d01f06034b110736df590829f12b)) 🔏

## v0.2.1 (2025-09-22)

### 🩹 Patch

  * ⚡️(auth_userpass): Add data to ensure auth userpass backend already exists (!4) by Romain Deville ([`4441c5b`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/4441c5ba2e0cf30f34193e6d051c2577934115db))
  * ⚡️(auth_userpass): Add data to ensure auth userpass backend already exists by Romain Deville ([`7017937`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/7017937320736eba85f6bbdda651939f3aefa449)) 🔏

### 🔊 Others

  * 📝(auth_userpass): Update README with terraform-docs by Romain Deville ([`ff2b022`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/ff2b022adc1b59ab75fe31e549ca26945416a692)) 🔏

## v0.2.0 (2025-09-22)

### ✨ Minor

  * ✨ Add submodule to deploy alias in auth userpass backend (!3) by Romain Deville ([`f0e1a68`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/f0e1a6873f15158fcb78e59d084a1918af995437))
  * ✨ Integrate submodule auth_userpass to the main module by Romain Deville ([`286df4d`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/286df4d0986c77be3eba1ab2b67f127c417b9e65)) 🔏
  * ✨(modules): Add submodule auth_userpass to deploy user with userpass backend by Romain Deville ([`9df2985`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/9df2985c4730c93d806e390404053ebddcb957e0)) 🔏

### 🩹 Patch

  * 🔧 Update terraform-docs to be recursive by Romain Deville ([`655f061`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/655f0619b6d499ee59645bfcdb9485855d8284c1)) 🔏

### 🔊 Others

  * 📝 Update README with desc and generated from tf-docs by Romain Deville ([`8c9a863`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/8c9a863455e74571c7c52cbee100f5e4066eab41)) 🔏

## v0.1.0 (2025-09-22)

### ✨ Minor

  * ✨ Add deployment of an identity (!2) by Romain Deville ([`43b0d46`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/43b0d46a09dd7f4819dfb5fef4372523a6603166))
  * ✨ Add deployment of an identity by Romain Deville ([`cf3e49f`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/cf3e49f0cfa61a209472541998cadf2bff8f441b))

### 🔊 Others

  * 📝 Update README generated from tf-docs and with usage examples by Romain Deville ([`9ce8113`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/9ce81139e2fb88c73512b8ceb5c7f36da7a6f876))

## v0.0.1 (2025-09-22)

### 🩹 Patch

  * 🔧 Add terraform-docs config from DGS template by Romain Deville ([`e969109`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/e969109176f1421725066ce3036c734808a36ee5)) 🔏
  * 🔧 Add semantic release config from DGS template by Romain Deville ([`900dc1d`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/900dc1d09b655c78a2d4310f4e91f6d3b355ae41)) 🔏
  * 🔧 Add markdownlint config from DGS template by Romain Deville ([`81d0b9b`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/81d0b9bfc27e3fd34c206005d758df0075ccf65d)) 🔏
  * 🔧 Add commitlint config from DGS template by Romain Deville ([`24eaf77`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/24eaf771df6909dd0e338c60ebce794d355a3c78)) 🔏
  * 🔧 Add cspell configuration from DGS template by Romain Deville ([`e934e9c`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/e934e9c04ea2c225ce614622cfeca48a60aae63f)) 🔏
  * 🔧 Add editorconfig from DGS template by Romain Deville ([`a41899e`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/a41899ed5276db57a2afde6ba5b8f274b3c6da98)) 🔏
  * 🔧 Add dotgit sync configuration by Romain Deville ([`cd06b99`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/cd06b99814f2b4f71f95db04ab0b731403cbbced)) 🔏

### 🔊 Others

  * 👷 Add Gitlab CI from DGS template by Romain Deville ([`b2f78da`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/b2f78daac41837e9454ac344ff316d7250b38ebe)) 🔏
  * 📄 Update licenses from DGS template by Romain Deville ([`bc339fa`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/bc339faee79f4d4fdcfbcc70c5b648d6673873da)) 🔏
  * 📝 Add CONTRIBUTING from DGS template by Romain Deville ([`d7d6749`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/d7d6749d47871945da751eb9fd870ce2395ee27f)) 🔏
  * 📝 Add CODE_OF_CONDUCT from DGS template by Romain Deville ([`5518680`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/5518680685ee3add488bec4aa43086c87814cc4e)) 🔏
  * 📝 Update README from DGS template by Romain Deville ([`9d81d63`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/9d81d63c8263b468b3ed9dd2644a4dfb7e4b4e48)) 🔏
  * 🔨 Add .envrc from DGS template by Romain Deville ([`7e9232b`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/7e9232b27805bf048d7e08399520ec7ac8c1ef9b)) 🔏
  * 🔨 Add devbox config from DGS template by Romain Deville ([`86c921c`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/86c921c12003999412e5269969b796357b0de9b9)) 🔏
  * 🔨 Add pre-commit configuration from DGS template by Romain Deville ([`65283bd`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/65283bd9d545124feaa1342db96f220b3e86edab)) 🔏
  * 🙈 Update gitignore from DGS template by Romain Deville ([`13a0c9f`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/13a0c9f3b05312e412f77e6df510dc75db734ad1)) 🔏
  * 🚀 Initialize repo using DGS (!1) by Romain Deville ([`f7e14d6`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/f7e14d6b2a235ad1a56c992d2320ab3a1bb916f3))

## v0.0.0 (2025-09-22)

### 🔊 Others

  * 🎉 Initial Empty Commit by Romain Deville ([`3ef16dd`](https://framagit.org/rdeville-public/opentofu/openbao-identity/-/commit/3ef16ddd9eee501d9cc12a49499d6afa733a57a7)) 🔏
