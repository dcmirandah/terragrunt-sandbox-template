# Terragrunt Sandbox

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
  - [Run a Single Environment](#run-a-single-environment)
  - [Run All Environments at Once](#run-all-environments-at-once)
- [Customization](#customization)
- [Contribution](#contribution)

## Overview

This repository provides a Terragrunt sandbox environment for testing and experimenting with Terragrunt and Terraform configurations. It includes a simple example using the `random` provider, which does not require authentication.

## Features

- Uses the `random` Terraform provider.
- Demonstrates a clean Terragrunt folder structure with reusable modules.
- Supports multiple environments.
- Generates a random password using infrastructure as code.
- Does not require any cloud credentials or authentication.

## Prerequisites

- Install [Terraform](https://developer.hashicorp.com/terraform/downloads)
- Install [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)
- A local terminal with Bash or compatible shell

## Usage

### Run a Single Environment

```bash
cd infrastructure/live/sandbox/random-password
terragrunt init
terragrunt plan
terragrunt apply
```

To view the password output:

```bash
terragrunt output generated_password
```

### Run All Environments at Once

To apply all environments in one go:

```bash
cd infrastructure/live
terragrunt run --all -- init
terragrunt run --all -- plan
terragrunt run --all -- apply

# -- Note: The -- separates Terragrunt's flags from the Terraform command you want to run across all directories.
```

To view all outputs:

```bash
terragrunt run --all -- output generated_password
```

## Customization

- Modify `inputs` in each `terragrunt.hcl` to suit different use cases.
- Add more environments like `production`, `test`, etc.
- Extend the module to generate UUIDs, pet names, or numeric values.

## Contribution

Feel free to contribute by submitting a pull request! 🚀
