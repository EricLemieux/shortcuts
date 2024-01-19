#!/usr/bin/env bash

set -euo pipefail
test "${DEBUG:-0}" = "1" && set -x

# https://stackoverflow.com/a/246128
SHORTCUTS_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )

find "${SHORTCUTS_DIR}/bin" "${SHORTCUTS_DIR}/script" -type f \
	| xargs chmod u+x

