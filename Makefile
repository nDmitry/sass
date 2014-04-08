SASS = sass --no-cache --scss --style expanded --load-path ./ --update

FIXTURES = test/fixtures
ACTUAL = test/actual

compile:
	mkdir -p $(ACTUAL)
	$(SASS) $(FIXTURES):$(ACTUAL)

.PHONY: clean
clean:
	rm -r $(ACTUAL)

.PHONY: test
test:
	node_modules/.bin/mocha --reporter spec

all: compile test clean
