# ACVP
The Automated Cryptographic Validation Protocol (ACVP) is a protocol currently under development to support a new National Voluntary Laboratory Accreditation Program (NVLAP) testing scope at the [National Institute of Standards and Technology (NIST)](https://www.nist.gov).  

All current information about ACVP may be found within this Github project. View the documents at https://usnistgov.github.io/ACVP/.

# Background
The rapid development of cryptographic technology over the last two decades and its adoption in many different technology domains has resulted in a sharp increase in the number and complexity of approved algorithms. The volume of cryptographic algorithm validations has outstripped the available human resources available to test, report, and validate results. The plethora of different algorithms has created a dire need for consistent requesting and reporting of test data and results. We also live in times of unprecedented levels of threats and exploits that require frequent product updates to fix defects and remove security vulnerabilities, which in turn requires much faster turnaround of validation updates than what the existing validation model allows. See the NIST [Automated Cryptographic Validation Testing project](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing) for broader context and information. 

Requirements documents for the existing Cryptrographic Algorithm Validation Program (CAVP) and the 17CAV scope can be found at https://www.nist.gov/national-voluntary-laboratory-accreditation-program-nvlap/requirements-documents-5. The requirements documents for the ACVP scope will likely be found on the same page once they have been finalized and published.
 
General information about CAVP can be found at https://csrc.nist.gov/Projects/Cryptographic-Algorithm-Validation-Program with the CAVP management manual found at https://csrc.nist.gov/CSRC/media/Projects/Cryptographic-Algorithm-Validation-Program/documents/CAVPMM.pdf and the FAQ at https://csrc.nist.gov/CSRC/media/Projects/Cryptographic-Algorithm-Validation-Program/documents/CAVPFAQ.pdf.
 

# Objective
The objective of this project is to define a protocol allowing independent implementation by all vendors participating in the NIST cryptographic validation programs ([CAVP](https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program#) and [CMVP](https://csrc.nist.gov/projects/cryptographic-module-validation-program#)) for accelerated test data generation and requisition, reporting of test results, and validation of NIST-approved cryptographic algorithms (see FIPS 140-2 [Annex A](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexa.pdf), [Annex C](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexc.pdf) and [Annex D](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexd.pdf)).

# Project Goals
The development of an Automated Cryptographic Validation Protocol (ACVP) that enables the generation and 
validation of standardized algorithm test evidence to facilitate the [modernization](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing) of [CAVP](https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program#) and [CMVP](https://csrc.nist.gov/projects/cryptographic-module-validation-program).

The new automated testing scope is available starting on April 8, 2019. This testing scope will eventually replace the existing Cryptographic Algorithm Validation Testing (17CAV) scope. To allow for a smooth transition <b> both scopes will be available for no less than six months, but the legacy 17CAV scope will be retired after no more than one year and may be retired earlier depending on the speed of the transition and scope of testing improvements ACVP implements relative to the legacy 17CAV scope </b>.

# Status
The demo server (demo.acvts.nist.gov) supports ACVP version 1.0. All endpoints defined in the protocol specification are available.

The demo server allows validation of the following NIST-approved algorithms (a superset of the algorithms available through the CAVS tool):

|Block Cipher Modes																				| Secure Hash 																		|Message Authentication 																				|DRBG 																						|Digital Signature 																						|Key Agreement 																								|KDF's 																											|
|------------------																				|------------																		|----------------------																					|----																						|----------------- 																						|------------- 																								|-----																											|
|[AES-CBC](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHA-1](./artifacts/draft-celi-acvp-sha-00.txt)		[HTML](./artifacts/draft-celi-acvp-sha-00.html)	|[AES-CCM](./artifacts/draft-celi-acvp-block-ciph-00.txt)		[HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)			|[ctrDRBG-AES-128](./artifacts/acvp_sub_drbg.txt)	[HTML](./artifacts/acvp_sub_drbg.html)	|[RSA mode: keyGen](./artifacts/acvp_sub_rsa.txt)				[HTML](./artifacts/acvp_sub_rsa.html)	|[KAS ECC ephemeralUnified](./artifacts/acvp_sub_kas_ecc.txt)	[HTML](./artifacts/acvp_sub_kas_ecc.html)	|[Counter KDF](./artifacts/acvp_sub_kdf108.txt)						[HTML](./artifacts/acvp_sub_kdf108.html)	|
|[AES-CFB1](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHA-224](./artifacts/draft-celi-acvp-sha-00.txt)	[HTML](./artifacts/draft-celi-acvp-sha-00.html)	|[CMAC-AES](./artifacts/acvp_sub_mac.txt)			[HTML](./artifacts/acvp_sub_mac.html)				|[ctrDRBG-AES-192](./artifacts/acvp_sub_drbg.txt)	[HTML](./artifacts/acvp_sub_drbg.html)	|[RSA mode: sigGen](./artifacts/acvp_sub_rsa.txt)				[HTML](./artifacts/acvp_sub_rsa.html)	|[KAS ECC fullMqv](./artifacts/acvp_sub_kas_ecc.txt)			[HTML](./artifacts/acvp_sub_kas_ecc.html)	|[Feedback KDF](./artifacts/acvp_sub_kdf108.txt)					[HTML](./artifacts/acvp_sub_kdf108.html)	|
|[AES-CFB8](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHA-256](./artifacts/draft-celi-acvp-sha-00.txt)	[HTML](./artifacts/draft-celi-acvp-sha-00.html)	|[CMAC-TDES](./artifacts/acvp_sub_mac.txt)			[HTML](./artifacts/acvp_sub_mac.html)				|[ctrDRBG-AES-256](./artifacts/acvp_sub_drbg.txt)	[HTML](./artifacts/acvp_sub_drbg.html)	|[RSA mode: sigVer](./artifacts/acvp_sub_rsa.txt)				[HTML](./artifacts/acvp_sub_rsa.html)	|[KAS ECC fullUnified](./artifacts/acvp_sub_kas_ecc.txt)		[HTML](./artifacts/acvp_sub_kas_ecc.html)	|[Double Pipeline Iterator KDF](./artifacts/acvp_sub_kdf108.txt)	[HTML](./artifacts/acvp_sub_kdf108.html)	|
|[AES-CFB128](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)	|[SHA-384](./artifacts/draft-celi-acvp-sha-00.txt)	[HTML](./artifacts/draft-celi-acvp-sha-00.html)	|[HMAC-SHA-1](./artifacts/acvp_sub_mac.txt)			[HTML](./artifacts/acvp_sub_mac.html)				|[ctrDRBG-TDES](./artifacts/acvp_sub_drbg.txt)		[HTML](./artifacts/acvp_sub_drbg.html)	|[RSA mode: signatureComponent](./artifacts/acvp_sub_rsa.txt)	[HTML](./artifacts/acvp_sub_rsa.html)	|[KAS ECC onePassDh](./artifacts/acvp_sub_kas_ecc.txt)			[HTML](./artifacts/acvp_sub_kas_ecc.html)	|[IKEv1](./artifacts/acvp_sub_kdf135_ikev1.txt)							[HTML](./artifacts/acvp_sub_kdf135_ikev1.html)		|
|[AES-CTR](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHA-512](./artifacts/draft-celi-acvp-sha-00.txt)	[HTML](./artifacts/draft-celi-acvp-sha-00.html)	|[HMAC-SHA2-224](./artifacts/acvp_sub_mac.txt)		[HTML](./artifacts/acvp_sub_mac.html)				|[HASH DRBG](./artifacts/acvp_sub_drbg.txt)			[HTML](./artifacts/acvp_sub_drbg.html)	|[RSA mode: decryptionComponent](./artifacts/acvp_sub_rsa.txt)	[HTML](./artifacts/acvp_sub_rsa.html)	|[KAS ECC onePassMqv](./artifacts/acvp_sub_kas_ecc.txt)			[HTML](./artifacts/acvp_sub_kas_ecc.html)	|[IKEv2](./artifacts/acvp_sub_kdf135_ikev2.txt)							[HTML](./artifacts/acvp_sub_kdf135_ikev2.html)		|
|[AES-ECB](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHA-512/224](./artifacts/draft-celi-acvp-sha-00.txt)[HTML](./artifacts/draft-celi-acvp-sha-00.html)	|[HMAC-SHA2-256](./artifacts/acvp_sub_mac.txt)		[HTML](./artifacts/acvp_sub_mac.html)				|[HMAC DRBG](./artifacts/acvp_sub_drbg.txt)			[HTML](./artifacts/acvp_sub_drbg.html)	|[RSA mode: legacySigVer](./artifacts/acvp_sub_rsa.txt)			[HTML](./artifacts/acvp_sub_rsa.html)	|[KAS ECC OnePassUnified](./artifacts/acvp_sub_kas_ecc.txt)		[HTML](./artifacts/acvp_sub_kas_ecc.html)	|[SNMP](./artifacts/acvp_sub_kdf135_snmp.txt)								[HTML](./artifacts/acvp_sub_kdf135_snmp.html)		|
|[AES-GCM](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHA-512/256](./artifacts/draft-celi-acvp-sha-00.txt)[HTML](./artifacts/draft-celi-acvp-sha-00.html)	|[HMAC-SHA2-384](./artifacts/acvp_sub_mac.txt)		[HTML](./artifacts/acvp_sub_mac.html)				|																							|[ECDSA mode: sigGenComponent](./artifacts/acvp_sub_ecdsa.txt)	[HTML](./artifacts/acvp_sub_ecdsa.html)	|[KAS ECC staticUnified](./artifacts/acvp_sub_kas_ecc.txt)		[HTML](./artifacts/acvp_sub_kas_ecc.html)	|[SRTP](./artifacts/acvp_sub_kdf135_srtp.txt)								[HTML](./artifacts/acvp_sub_kdf135_srtp.html)		|
|[AES-GCM-SIV](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)	|[SHA3-224](./artifacts/draft-celi-acvp-sha3-00.txt)	[HTML](./artifacts/draft-celi-acvp-sha3-00.html)	|[HMAC-SHA2-512](./artifacts/acvp_sub_mac.txt)		[HTML](./artifacts/acvp_sub_mac.html)				|																							|[ECDSA mode: keyGen](./artifacts/acvp_sub_ecdsa.txt)			[HTML](./artifacts/acvp_sub_ecdsa.html)	|[KAS ECC CDH-Component](./artifacts/acvp_sub_kas_ecc.txt)		[HTML](./artifacts/acvp_sub_kas_ecc.html)	|[SSH](./artifacts/acvp_sub_kdf135_ssh.txt)								[HTML](./artifacts/acvp_sub_kdf135_ssh.html)		|
|[AES-KW](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHA3-256](./artifacts/draft-celi-acvp-sha3-00.txt)	[HTML](./artifacts/draft-celi-acvp-sha3-00.html)	|[HMAC-SHA2-512/224](./artifacts/acvp_sub_mac.txt)	[HTML](./artifacts/acvp_sub_mac.html)				|																							|[ECDSA mode: keyVer](./artifacts/acvp_sub_ecdsa.txt)			[HTML](./artifacts/acvp_sub_ecdsa.html)	|[KAS FFC dhHybrid1](./artifacts/acvp_sub_kas_ffc.txt)			[HTML](./artifacts/acvp_sub_kas_ffc.html)	|[TLS](./artifacts/acvp_sub_kdf135_tls.txt)								[HTML](./artifacts/acvp_sub_kdf135_tls.html)		|
|[AES-KWP](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHA3-384](./artifacts/draft-celi-acvp-sha3-00.txt)	[HTML](./artifacts/draft-celi-acvp-sha3-00.html)	|[HMAC-SHA2-512/256](./artifacts/acvp_sub_mac.txt)	[HTML](./artifacts/acvp_sub_mac.html)				|																							|[ECDSA mode: sigGen](./artifacts/acvp_sub_ecdsa.txt)			[HTML](./artifacts/acvp_sub_ecdsa.html)	|[KAS FFC mqv2](./artifacts/acvp_sub_kas_ffc.txt)				[HTML](./artifacts/acvp_sub_kas_ffc.html)	|[TPM](./artifacts/acvp_sub_kdf135_tpm.txt)								[HTML](./artifacts/acvp_sub_kdf135_tpm.html)		|
|[AES-OFB](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHA3-512](./artifacts/draft-celi-acvp-sha3-00.txt)	[HTML](./artifacts/draft-celi-acvp-sha3-00.html)	|[HMAC-SHA3-224](./artifacts/acvp_sub_mac.txt)		[HTML](./artifacts/acvp_sub_mac.html)				|																							|[ECDSA mode: sigVer](./artifacts/acvp_sub_ecdsa.txt)			[HTML](./artifacts/acvp_sub_ecdsa.html)	|[KAS FFC dhEphem](./artifacts/acvp_sub_kas_ffc.txt)			[HTML](./artifacts/acvp_sub_kas_ffc.html)	|[ANSX9.63](./artifacts/acvp_sub_kdf135_x963.txt)							[HTML](./artifacts/acvp_sub_kdf135_x963.html)		|
|[AES-XPN](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHAKE-128](./artifacts/draft-celi-acvp-sha3-00.txt)	[HTML](./artifacts/draft-celi-acvp-sha3-00.html)	|[HMAC-SHA3-256](./artifacts/acvp_sub_mac.txt)		[HTML](./artifacts/acvp_sub_mac.html)				|																							|[DSA mode: keyGen](./artifacts/acvp_sub_dsa.txt)				[HTML](./artifacts/acvp_sub_dsa.html)	|[KAS FFC dhHybridOneFlow](./artifacts/acvp_sub_kas_ffc.txt)	[HTML](./artifacts/acvp_sub_kas_ffc.html)	|																												|
|[AES-XTS](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|[SHAKE-256](./artifacts/draft-celi-acvp-sha3-00.txt)	[HTML](./artifacts/draft-celi-acvp-sha3-00.html)	|[HMAC-SHA3-384](./artifacts/acvp_sub_mac.txt)		[HTML](./artifacts/acvp_sub_mac.html)				|																							|[DSA mode: sigVer](./artifacts/acvp_sub_dsa.txt)				[HTML](./artifacts/acvp_sub_dsa.html)	|[KAS FFC mqv1](./artifacts/acvp_sub_kas_ffc.txt)				[HTML](./artifacts/acvp_sub_kas_ffc.html)	|																												|
|[TDES-CBC](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|																					|[HMAC-SHA3-512](./artifacts/acvp_sub_mac.txt)		[HTML](./artifacts/acvp_sub_mac.html)				|																							|[DSA mode: sigGen](./artifacts/acvp_sub_dsa.txt)				[HTML](./artifacts/acvp_sub_dsa.html)	|[KAS FFC dhOneFlow](./artifacts/acvp_sub_kas_ffc.txt)			[HTML](./artifacts/acvp_sub_kas_ffc.html)	|																												|
|[TDES-CBCI](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)	|																					|																										|																							|[DSA mode: pqgGen](./artifacts/acvp_sub_dsa.txt)				[HTML](./artifacts/acvp_sub_dsa.html)	|[KAS FFC dhStatic](./artifacts/acvp_sub_kas_ffc.txt)			[HTML](./artifacts/acvp_sub_kas_ffc.html)	|																												|
|[TDES-CFBP1](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)	|																					|																										|																							|[DSA mode: pqgVer](./artifacts/acvp_sub_dsa.txt)				[HTML](./artifacts/acvp_sub_dsa.html)	|																											|																												|
|[TDES-CFBP8](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)	|																					|																										|																							|																										|																											|																												|
|[TDES-CFBP64](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)	|																					|																										|																							|																										|																											|																												|
|[TDES-CTR](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|																					|																										|																							|																										|																											|																												|
|[TDES-ECB](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|																					|																										|																							|																										|																											|																												|
|[TDES-KW](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)		|																					|																										|																							|																										|																											|																												|
|[TDES-OFB](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)	|																					|																										|																							|																										|																											|																												|
|[TDES-OFBI](./artifacts/draft-celi-acvp-block-ciph-00.txt) [HTML](./artifacts/draft-celi-acvp-block-ciph-00.html)	|																					|																										|																							|																										|																											|																												|

## Current 1.0 Support
Please check the protocol specification for details on how to access the available resources. 

# Accessing the demo server

To access the demo server one needs a TLS credential **and** a one-time password (OTP). The protocol specification and other development information are available in this repository. You may want to use the companion [ACVP client](https://github.com/cisco/libacvp) to jump-start your work. 

To set expectations, since this is a demo system, it will be in a state of flux and any all data on the system is considered temporary and may be reset to accommodate development of the Automated Cryptographic Validation Protocol (ACVP) service. We will try to keep the demo service relatively stable, but we plan to update it as we continue to add new algorithms and capabilities.

## Obtaining TLS credentials

To access the [demo environment](https://demo.acvts.nist.gov/acvp/home) you will need to send your CSR to us. Please use a 2048-bit RSA key pair and sign using at least a SHA-256 hash. Please send a request to acvts-demo@nist.gov with 'CSR REQUEST FOR ACCESS TO DEMO' in the subject line. You will receive instructions for how to upload your CSR. 

You are expected to protect the key pair from unauthorized use and to notify NIST in the event the keypair becomes compromised. Also, since we do not have a formal login page the following notice applies when accessing the ACVP system:

```
“***WARNING***WARNING***WARNING
You are accessing a U.S. Government information system, which includes: 1) this computer, 
2) this computer network, 3) all computers connected to this network, and 4) all devices 
and storage media attached to this network or to a computer on this network. You understand 
and consent to the following: you may access this information system for authorized use 
only; you have no reasonable expectation of privacy regarding any communication of data 
transiting or stored on this information system; at any time and for any lawful Government 
purpose, the Government may monitor, intercept, and search and seize any communication or 
data transiting or stored on this information system; and any communications or data 
transiting or stored on this information system may be disclosed or used for any lawful 
Government purpose.
***WARNING***WARNING***WARNING”
```

## Configuring and using One-Time-Passwords (OTP)

Please be aware that starting in the week of March 12th, 2018, the second-factor authentication based on OTP and associated workflows have been turned-on - see details [here](https://github.com/usnistgov/ACVP/wiki#second-factor-authentication-and-authorization-schema-for-accessing-and-working-with-the-nist-automated-cryptographic-validation-services). 

# Contribution guidelines:

If you want to contribute, please follow the simple rules below and send us pull requests. 

  - Updates to specs, JSON, etc should take place within the `./src/*.xml` files.
  - Feel free to run `WindowsGenerateAllArtifacts.bat` (Windows) or `Makefile` (non-Windows) to ensure valid HTML and TXT files can be generated from the changes.
  - Create a Pull Request with the updated XML files. TravisCI will verify the XML can compile with `xml2rfc` and upload the artifacts to the `gh-pages` branch to be reflected on https://usnistgov.github.io/ACVP/

If you would like to talk to our developers, you may want to send email to our mailing list algotest@list.nist.gov. You may also report bugs or request new tests.


# Related projects
- [Automated Cryptographic Validation Testing](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing)
- [Cisco libacvp](https://github.com/cisco/libacvp)
- [Google Project Wycheproof](https://github.com/google/wycheproof)
- [HACL*, a formally verified cryptographic library written in F*](https://github.com/mitls/hacl-star)
- [Automated Module Validation Protocol](https://github.com/usnistgov/AMVP)
- [ACVP Proxy](https://github.com/smuellerDD/acvpproxy)
- [ACVP Parser](https://github.com/smuellerDD/acvpparser)

# Licensing terms

This data was developed by employees of the National Institute of Standards and Technology (NIST), an agency of the Federal Government, in collaboration with 
third-party contributers. Pursuant to title 17 United States Code Section 105, works of NIST employees are not subject to copyright protection in the 
United States and are considered to be in the public domain. The data is provided by NIST as a public service and is expressly provided "AS IS." 
NIST MAKES NO WARRANTY OF ANY KIND, EXPRESS, IMPLIED OR STATUTORY, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTY OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT AND DATA ACCURACY. 
NIST does not warrant or make any representations regarding the use of the data or the results thereof, including but not limited to the correctness, 
accuracy, reliability or usefulness of the data. NIST SHALL NOT BE LIABLE AND YOU HEREBY RELEASE NIST FROM LIABILITY FOR ANY INDIRECT, CONSEQUENTIAL, SPECIAL, 
OR INCIDENTAL DAMAGES (INCLUDING DAMAGES FOR LOSS OF BUSINESS PROFITS, BUSINESS INTERRUPTION, LOSS OF BUSINESS INFORMATION, AND THE LIKE), 
WHETHER ARISING IN TORT, CONTRACT, OR OTHERWISE, ARISING FROM OR RELATING TO THE DATA (OR THE USE OF OR INABILITY TO USE THIS DATA), EVEN IF 
NIST HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

To the extent that NIST may hold copyright in countries other than the United States, you are hereby granted the non-exclusive irrevocable and 
unconditional right to print, publish, prepare derivative works and distribute the NIST data, in any medium, or authorize others to do so on your behalf, 
on a royalty-free basis throughout the world.

You may improve, modify, and create derivative works of the data or any portion of the data, and you may copy and distribute such modifications or works. 
Modified works should carry a notice stating that you changed the data and should note the date and nature of any such change. 
Please explicitly acknowledge the National Institute of Standards and Technology as the source of the data: Data citation recommendations are provided below.
Permission to use this data is contingent upon your acceptance of the terms of this agreement and upon your providing appropriate acknowledgments of 
NIST's creation of the data.

  - Citation format:

    - Author/editor (Publication Year), Title, Publisher, Persistent Identifier (PID) or URL (Access date). 
