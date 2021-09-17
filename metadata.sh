#! /usr/bin/env bash
cat > metadata <<EOF
export HELM_TAG=$GO_REVISION
EOF
