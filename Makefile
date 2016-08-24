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
	xml2rfc --html src/acvp_sub_kdf135_tpm.xml -o artifacts/acvp_sub_kdf135_tpm.html
	xml2rfc src/acvp_sub_kdf135_tpm.xml -o artifacts/acvp_sub_kdf135_tpm.txt
	xml2rfc --html src/acvp_sub_kdf135_tls.xml -o artifacts/acvp_sub_kdf135_tls.html
	xml2rfc src/acvp_sub_kdf135_tls.xml -o artifacts/acvp_sub_kdf135_tls.txt
	xml2rfc --html src/acvp_sub_kdf135_ssh.xml -o artifacts/acvp_sub_kdf135_ssh.html
	xml2rfc src/acvp_sub_kdf135_ssh.xml -o artifacts/acvp_sub_kdf135_ssh.txt
	xml2rfc --html src/acvp_sub_kdf135_srtp.xml -o artifacts/acvp_sub_kdf135_srtp.html
	xml2rfc src/acvp_sub_kdf135_srtp.xml -o artifacts/acvp_sub_kdf135_srtp.txt
	xml2rfc --html src/acvp_sub_kdf135_snmp.xml -o artifacts/acvp_sub_kdf135_snmp.html
	xml2rfc src/acvp_sub_kdf135_snmp.xml -o artifacts/acvp_sub_kdf135_snmp.txt
	xml2rfc --html src/acvp_sub_kdf108.xml -o artifacts/acvp_sub_kdf108.html
	xml2rfc src/acvp_sub_kdf108.xml -o artifacts/acvp_sub_kdf108.txt
	xml2rfc --html src/acvp_sub_dsa.xml -o artifacts/acvp_sub_dsa.html
	xml2rfc src/acvp_sub_dsa.xml -o artifacts/acvp_sub_dsa.txt
	xml2rfc --html src/acvp_sub_ecdsa.xml -o artifacts/acvp_sub_ecdsa.html
	xml2rfc src/acvp_sub_ecdsa.xml -o artifacts/acvp_sub_ecdsa.txt
