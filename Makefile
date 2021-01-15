release-base-sys-dl:
	git tag orbyter-base-sys-dl-`cat orbyter-base-sys-dl/VERSION`
	git push --tags

release-base-sys:
	git tag orbyter-base-sys-`cat orbyter-base-sys/VERSION`
	git push --tags

release-dl-dev:
	git tag orbyter-dl-dev-`cat orbyter-dl-dev/VERSION`
	git push --tags

release-ml-dev:
	git tag orbyter-ml-dev-`cat orbyter-ml-dev/VERSION`
	git push --tags

release-mlflow-server:
	git tag orbyter-mlflow-server-`cat orbyter-mlflow-server/VERSION`
	git push --tags
