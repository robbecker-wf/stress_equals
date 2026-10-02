# This makefile leverages automatic documentation. Running `make` will generate a list
# of the most commonly used targets. `make help` will generate a more complete list.
#
# When adding a target, prefix the doc string with two pound signs to add it to the common
# list or two pounds and VERBOSE to demote it to the `make help` list. Prefix it with two pounds
# and INTERNAL to exclude from all help, or just don't add a doc string.
#
# Based on https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

.DEFAULT_GOAL := usage
SHELL=/bin/bash -o pipefail

TARGETS := usage help gen compile try bench report
ARGS := $(filter-out $(TARGETS),$(MAKECMDGOALS))
N ?= $(or $(firstword $(ARGS)),10)
# Shape of the generated classes and main; see `variants` in gen.dart for the full list.
VARIANT ?= dynamic

.PHONY: usage
usage: ##INTERNAL Display the most commonly used make targets
	@printf "\33[32m"
	@echo "Commonly used make targets. Use 'make help' to see all documented targets."
	@printf "\033[0m\n"
	@grep -E '^%?[a-zA-Z0-9/_-]+:.*?##(META)? .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?##(META)? "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: help
help: ##META Display all make targets
	@printf "\33[32m"
	@echo "All documented make targets. Use 'make' to see only the most commonly used targets."
	@printf "\033[0m\n"
	@grep -E '^%?[a-zA-Z0-9/_-]+:.*?##(META|VERBOSE)? .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?##(META|VERBOSE)? "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: gen
gen: ## Generate the Dart code for the benchmark (make gen [n] [VARIANT=dynamic|plain|basefield|...], n defaults to 10)
	dart gen.dart $(N) $(VARIANT)

.PHONY: compile
compile: ## Compile the Dart code to JavaScript
	dart compile js -v -o bin/main.dart.js -O3 --csp bin/main.dart

.PHONY: try
try: ## Generate and compile the benchmark (make try [n] [VARIANT=...], n defaults to 10)
	$(MAKE) gen N=$(N) VARIANT=$(VARIANT)
	$(MAKE) compile

.PHONY: bench
bench: ## Compile every variant at N from 1 to 7000 and write an HTML report to bench_results/ (override with SIZES="1 100" VARIANTS="dynamic none")
	dart tool/bench.dart $(if $(VARIANTS),--variants="$(VARIANTS)") $(SIZES)

.PHONY: report
report: ##VERBOSE Rebuild the HTML report for the latest bench run (RESULTS=bench_results/<run> for another)
	dart tool/bench.dart report $(RESULTS)

# Swallow positional args like the `20` in `make gen 20` so make doesn't treat them as targets.
ifneq ($(ARGS),)
$(ARGS):
	@:
endif
