#!/usr/bin/env bash
set -euo pipefail
mkdir -p /tmp/vm7-extends-read-secret-proof
printf '%s' "$VM7_EXTENDS_PROTECTED_SECRET" | sha256sum | awk '{print $1}' > /tmp/vm7-extends-read-secret-proof/secret.sha256
printf '%s\n' 'external-read-code-executed-on-protected-branch' > /tmp/vm7-extends-read-secret-proof/execution.txt
