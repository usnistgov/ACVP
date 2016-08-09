SOURCES=acvp_protocol.xml acvp_sub_symmetric.xml
HTMLS=$(SOURES:.xml=.html)

all:
	xml2rfc --html src/acvp_protocol.xml -o artifacts/acvp_protocol.html
	xml2rfc src/acvp_protocol.xml -o artifacts/acvp_protocol.txt
	xml2rfc --html src/acvp_sub_symmetric.xml -o artifacts/acvp_sub_symmetric.html
	xml2rfc src/acvp_sub_symmetric.xml -o artifacts/acvp_sub_symmetric.txt
	xml2rfc --html src/acvp_sub_hashmac.xml -o artifacts/acvp_sub_hashmac.html
	xml2rfc src/acvp_sub_hashmac.xml -o artifacts/acvp_sub_hashmac.txt
	xml2rfc --html src/acvp_sub_kdf135_ikev1.xml -o artifacts/acvp_sub_kdf135_ikev1.html
	xml2rfc src/acvp_sub_kdf135_ikev1.xml -o artifacts/acvp_sub_kdf135_ikev1.txt
	xml2rfc --html src/acvp_sub_kdf135_ikev2.xml -o artifacts/acvp_sub_kdf135_ikev2.html
	xml2rfc src/acvp_sub_kdf135_ikev2.xml -o artifacts/acvp_sub_kdf135_ikev2.txt
	xml2rfc --html src/acvp_sub_kdf135_x963.xml -o artifacts/acvp_sub_kdf135_x963.html
	xml2rfc src/acvp_sub_kdf135_x963.xml -o artifacts/acvp_sub_kdf135_x963.txt
