#!/bin/bash

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
check "forge version" forge -V
check "cast version" cast -V
check "anvil version" anvil -V

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
