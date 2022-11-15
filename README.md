# Dev Container Features

## Contents

This repository contains following features:

- [foundry](./src/foundry/README.md): Install Foundry

## Usage

To use the features from this repository, add the desired features to devcontainer.json.

This example uses the `foundry` feature on devcontainer.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/romeroadrian/dev-container-features/foundry:1": {
            "version": "latest"
        }
    }
}
```
