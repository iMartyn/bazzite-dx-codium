#!/usr/bin/env bash
set -euo pipefail

patch -p0 < ${MODULE_DIRECTORY}/revert-hostname-fix/revert.patch
