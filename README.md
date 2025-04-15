# CockroachDB Operator Terraform Module

This repository contains one-to-one converted versions of
the [CockroachDB Operator](https://github.com/cockroachdb/cockroach-operator) kubectl manifests into
native HCL Terraform format.

## Context

Terraform is a powerful tool for managing infrastructure as code. However, many Kubernetes applications provide their
configurations as kubectl manifests, which cannot be used directly with Terraform. This project converts those
Kubernetes manifests into Terraform configurations, allowing you to manage your Kubernetes resources alongside the rest
of your infrastructure using Terraform.

## Features

* Direct conversions from YAML to HCL
* Organized by version tags
* Easy integration into your Terraform workflows
* Support for multiple versions of CockroachDB Operator

## Using with Terraform

```hcl
module "cockroach_operator" {
  source = "git::https://github.com/terraform-please/cockroach-operator.git//v2.18.1"
}
```

## Using with CDKTF

Update cdktf.json to include the module:

```json
{
  "terraformModules": [
    {
      "name": "cockroach-operator",
      "source": "git::https://github.com/terraform-please/cockroach-operator.git//v2.18.1"
    }
  ]
}
```

Then run `cdktf get` to download the module.

Use the module in your Typescript code:

```typescript
import {CockroachOperator} from "@gen/modules/cockroach-operator";

new CockroachOperator(this, "cockroach_operator", {
    namespace: "cockroach-operator-system",
})
```

## Contributing

Feel free to open issues or pull requests for improvements or fixes.
