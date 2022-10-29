help: ## For targets formatted as "target: ## description" ## Prints help menu.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


TARGETS := \
	orbyter-base-sys \
	orbyter-base-sys-dl \
	orbyter-dl-dev \
	orbyter-ml-dev \
	orbyter-mlflow-server \
	orbyter-spark-dev 

check_defined = $(strip $(foreach 1,$1, $(call __check_defined,$1,$(strip $(value 2)))))
__check_defined = $(if $(value $1),, $(error Undefined $1$(if $2, ($2))$(if $(value @), required by `$@')))
check_in_list = $(if $(filter $(TARGETS), $1),, $(error `target`$1 is not a valid target. Expected [$(TARGETS)]))


build: ## Builds a Docker image locally.
	@:$(call check_defined, target, expected target='image-name')
	@:$(call check_in_list, $(target))
	docker build -t $(target) $(target)


release: ## Pushes version tag to Github, kicking off a build-and-push workflow.
	@:$(call check_defined, target, expected target='image-name')
	@:$(call check_in_list, $(target))
	git tag $(target)-`cat $(target)/VERSION`
	git push --tags
