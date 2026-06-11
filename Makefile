# AAP Demo - Standalone Makefile
# Includes all targets from aap-demo.mk

include aap-demo.mk

.DEFAULT_GOAL := help

.PHONY: help
help: ## Show this help
	@echo ""
	@echo "AAP Demo - AAP 2.7 Deployment Tool"
	@echo ""
	@echo "Usage:"
	@echo "  make aap-demo              Deploy AAP 2.7"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-25s\033[0m %s\n", $$1, $$2}'
	@echo ""
