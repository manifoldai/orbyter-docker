PHONY: release-mldev

release-mldev:
	git tag orbyter-ml-dev-`cat orbyter-ml-dev/VERSION`
	git push --tags
