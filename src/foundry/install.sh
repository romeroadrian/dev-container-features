#!/bin/sh
set -e

echo "Installing Foundry..."

curl -L https://foundry.paradigm.xyz | bash

~/.foundry/bin/foundryup
