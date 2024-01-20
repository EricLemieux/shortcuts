#!/usr/bin/env bash

set -euo pipefail
test "${DEBUG:-0}" = "1" && set -x

# https://stackoverflow.com/a/246128
SHORTCUTS_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )

if [[ -z "${1}" ]]; then
    echo 'Must specify a name for the new shortcut' >&2
    exit 1
fi
name="${1}"
bin_path="${SHORTCUTS_DIR}/bin/${name}"

cat<<EOF > "${bin_path}"
#!/usr/bin/env bash

set -euo pipefail
test "${DEBUG:-0}" = "1" && set -x

# TODO
EOF

chmod u+x "${bin_path}"

