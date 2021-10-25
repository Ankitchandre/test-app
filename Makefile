define METADATA
export GIT_REVISION=$(TEST_VERSION)
endef
export METADATA

gen_metadata:
  echo "$$METADATA" > metadata
