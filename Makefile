help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

build-base-sys-dl: ## build orbyter-base-sys-dl
	docker build -t orbyter-base-sys-dl orbyter-base-sys-dl

release-base-sys-dl: ## tags git with orbyter-base-sys-dl-<VERSION> and pushes to github.
	git tag orbyter-base-sys-dl-`cat orbyter-base-sys-dl/VERSION`
	git push --tags

build-base-sys: ## build orbyter-base-sys
	docker build -t orbyter-base-sys orbyter-base-sys

release-base-sys: ## tags git with orbyter-base-sys-<VERSION> and pushes to github.
	git tag orbyter-base-sys-`cat orbyter-base-sys/VERSION`
	git push --tags

build-dl-dev: ## build orbyter-dl-dev
	docker build -t orbyter-dl-dev orbyter-dl-dev

release-dl-dev: ## tags git with orbyter-dl-dev-<VERSION> and pushes to github.
	git tag orbyter-dl-dev-`cat orbyter-dl-dev/VERSION`
	git push --tags

build-ml-dev: ## build orbyter-ml-dev
	docker build -t orbyter-ml-dev orbyter-ml-dev

release-ml-dev: ## tags git with orbyter-ml-dev-<VERSION> and pushes to github.
	git tag orbyter-ml-dev-`cat orbyter-ml-dev/VERSION`
	git push --tags

build-mlflow-server: ## build orbyter-mlflow-server
	docker build -t orbyter-mlflow-server orbyter-mlflow-server

release-mlflow-server: ## tags git with orbyter-mlflow-server-<VERSION> and pushes to github.
	git tag orbyter-mlflow-server-`cat orbyter-mlflow-server/VERSION`
	git push --tags
