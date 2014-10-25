SASS = sass --scss --require susy --compass --no-cache --style expanded --sourcemap=none --load-path sass --update

FIXTURES = test/fixtures
ACTUAL = test/actual

compile:
	mkdir -p $(ACTUAL)
	$(SASS) $(FIXTURES):$(ACTUAL)
	$(SASS) sass/main.scss:$(ACTUAL)/main.css

.PHONY: clean
clean:
	rm -r $(ACTUAL)

.PHONY: test
test:
	node_modules/.bin/mocha --reporter spec

all: compile test clean
