.PHONY: d

d:
	@if [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "Error: Commit message is required. Use 'make d Your commit message'"; \
		exit 1; \
	fi
	git add .
	git commit -m "$(filter-out $@,$(MAKECMDGOALS))"
	git push

%:
	@:
