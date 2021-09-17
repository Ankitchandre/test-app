#! /usr/bin/env bash
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cat > $SOURCE_DIR/../metadata <<EOF
export HELM_TAG=$GO_REVISION
EOF
