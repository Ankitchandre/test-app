#! /usr/bin/env bash
cat > metadata.sh <<EOF
export HELM_TAG=$GO_REVISION
EOF
