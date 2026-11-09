#!/usr/bin/env bash
set -euo pipefail

patch -p1 < ${MODULE_DIRECTORY}/revert-hostname-fix/revert.patch
