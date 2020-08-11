.PHONY: all update clean publish

SRCS = $(wildcard *.adoc)
HTML 	:= $(patsubst %.adoc, %.html, $(SRCS))
TXT 	:= $(patsubst %.adoc, %.txt,  $(SRCS))

all: $(HTML) $(TXT)

update:
	bundle install

clean:
	rm -rf *.err *.html *.xml *.txt documents/

%.html %.txt: %.adoc
	bundle exec metanorma compile $<

publish:
	mkdir -p documents
	cp ../README.md documents/README.md
	cp ../_config.yml documents/_config.yml
	mv *.html documents/
	mv *.txt documents/
