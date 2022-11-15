#!/bin/sh
set -e

# Clean up
rm -rf /var/lib/apt/lists/*

apt_get_update()
{
    if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
        echo "Running apt-get update..."
        apt-get update -y
    fi
}

# Checks if packages are installed and installs them if not
check_packages() {
    if ! dpkg -s "$@" > /dev/null 2>&1; then
        apt_get_update
        apt-get -y install --no-install-recommends "$@"
    fi
}

# Ensure apt is in non-interactive to avoid prompts
export DEBIAN_FRONTEND=noninteractive

# Install dependencies if missing
check_packages curl ca-certificates
if ! type git > /dev/null 2>&1; then
    check_packages git
fi

# Install foundry
echo "Installing Foundry..."

su -l ${USERNAME} -c "curl -L https://foundry.paradigm.xyz | bash"
su -l ${USERNAME} -c "~/.foundry/bin/foundryup"
