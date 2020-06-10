all: help

help: ## Show this help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Build site and put static html files
	bundle exec jekyll build

serve: ## Start the development server bound to http://localhost:4000
	bundle exec jekyll serve --baseurl ''

develop: ## Continuously rebuild incrementally as you make changes. http://localhost:4000
	bundle exec jekyll serve --baseurl '' --watch --incremental
