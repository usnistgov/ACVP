.PHONY: all update clean publish

SRCS = $(wildcard *.adoc)
HTML 	:= $(patsubst %.adoc, %.html, $(SRCS))
TXT 	:= $(patsubst %.adoc, %.txt,  $(SRCS))

all: $(HTML) $(TXT)

update:
	bundle install

clean:
	rm -rf *.err *.html *.xml *.txt *.abort documents/

%.html %.txt: %.adoc
	bundle exec metanorma compile $<

publish:
	mkdir -p documents
	cp ../index.html documents/index.html # can't start in the same directory because of the clean command
	cp ../slate.css documents/slate.css
	mv *.html documents/
	mv *.txt documents/
