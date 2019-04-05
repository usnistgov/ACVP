XML2RFC := xml2rfc
RM 		:= rm

SRC     := $(wildcard src/*.xml)
HTML    := $(patsubst src%,artifacts%,$(patsubst %.xml,%.html,$(SRC)))
TXT     := $(patsubst src%,artifacts%,$(patsubst %.xml,%.txt,$(SRC)))

all: $(HTML) $(TXT)

artifacts/%.html: src/%.xml
	@echo "Making html for $@ from $<"
	xml2rfc --html $< -o $@

artifacts/%.txt: src/%.xml
	@echo "Making txt for $@ from $<"
	xml2rfc $< -o $@

clean:
	$(RM) $(HTML) $(TXT)