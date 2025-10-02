# Build a tar ball and wheel to submit to a pypi server
clear-dist:
    rm -rf ./dist

package: clear-dist
    uv build

publish: package
    uv publish --index xyme-pypi --username "test"

publish-dev: package
    uv publish --index xyme-pypi-dev --username "test"

# Run the unit tests suite
test:
    pytest -n auto tests

# Format the code
format:
    ruff format

# Check whether the code is formatted
format-check:
    ruff format --check
