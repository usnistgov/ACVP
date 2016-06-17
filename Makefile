
SOURCES=acvp_sub_symmetric.xml
HTMLS=$(SOURES:.xml=.html)

all:
	xml2rfc --html src/acvp_sub_symmetric.xml -o artifacts/acvp_sub_symmetric.html
	xml2rfc src/acvp_sub_symmetric.xml -o artifacts/acvp_sub_symmetric.txt
