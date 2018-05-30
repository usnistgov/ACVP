# ACVP
The Automated Cryptographic Validation Protocol (ACVP) is a protocol currently under development to support a new National Voluntary Laboratory Accreditation Program (NVLAP) testing scope at the National Institute of Standards and Technology (NIST), https://www.nist.gov,  of the same name that will permit the automated testing of NIST Federal Information Processing Standard (FIPS) 140 approved cryptographic algorithms, https://csrc.nist.gov/publications/detail/fips/140/2/final. The testing scope is currently planned to become available during 1QFY19 (Fall 2018). Once available this testing scope will eventually replace the existing Cryptographic Algorithm Validation Testing (17CAV) scope. To allow for a smooth transition both scopes will be available for no less than six months, but the legacy 17CAV scope will be retired after no more than one year and may be retired earlier depending on the speed of the transition and scope of testing improvements ACVP implents relative to the legacy 17CAV scope.
 
Requirements documents for the existing Cryptrographic Algorithm Validation Program (CAVP) and the 17CAV scope can be found at https://www.nist.gov/national-voluntary-laboratory-accreditation-program-nvlap/requirements-documents-5. The requirements documents for the ACVP scope will likely be found on the same page once they have been finalized and published.
 
General information about CAVP can be found at https://csrc.nist.gov/Projects/Cryptographic-Algorithm-Validation-Program with the CAVP management manual found at https://csrc.nist.gov/CSRC/media/Projects/Cryptographic-Algorithm-Validation-Program/documents/CAVPMM.pdf and the FAQ at https://csrc.nist.gov/CSRC/media/Projects/Cryptographic-Algorithm-Validation-Program/documents/CAVPFAQ.pdf.
 
All current information about ACVP may be found within this Github project.

# Background
The rapid development of cryptographic technology over the last two decades and its adoption in many different technology domains has resulted in a sharp increase in the number and complexity of approved algorithms. The volume of cryptographic algorithm validations has outstripped the available human resources available to test, report, and validate results. The plethora of different algorithms has created a dire need for consistent requesting and reporting of test data and results. We also live in times of unprecedented levels of threats and exploits that require frequent product updates to fix defects and remove security vulnerabilities, which in turn requires much faster turnaround of validation updates than what the existing validation model allows. See the NIST [Automated Cryptographic Validation Testing project](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing) for broader context and information. 

# Objective
The objective of this project is to define a protocol allowing independent implementation by all vendors participating in the NIST cryptographic validation programs ([CAVP](https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program#) and [CMVP](https://csrc.nist.gov/projects/cryptographic-module-validation-program#)) for accelerated test data generation and requisition, reporting of test results, and validation of NIST-approved cryptographic algorithms (see FIPS 140-2 [Annex A](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexa.pdf), [Annex C](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexc.pdf) and [Annex D](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexd.pdf)).

# Project Goals
The development of an Automated Cryptographic Validation Protocol (ACVP) that enables the generation and 
validation of standardized algorithm test evidence to facilitate the [modernization](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing) of [CAVP](https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program#) and [CMVP](https://csrc.nist.gov/projects/cryptographic-module-validation-program#).

# Status
The demo server supports ACVP, version 0.4. We continue to work on supporting additional algorithms and other enhancements, so stay tuned for updates. Currently, the demo server allows validation of the following NIST-approved algorithms:

|Block Cipher Modes									| Secure Hash 								|Message Authentication 							|DRBG 												|Digital Signature 												|Key Agreement 													|KDF's 																|
|------------------									|------------								|----------------------								|----												|----------------- 												|------------- 													|-----																|
|[AES-CBC](./artifacts/acvp_sub_symmetric.txt)		|[SHA-1](./artifacts/acvp_sub_sha.txt)		|[AES-CCM](./artifacts/acvp_sub_symmetric.txt)		|[ctrDRBG-AES-128](./artifacts/acvp_sub_drbg.txt)	|[RSA mode: keyGen](./artifacts/acvp_sub_rsa.txt)				|[KAS ECC ephemeralUnified](./artifacts/acvp_sub_kas_ecc.txt)	|[Counter KDF](./artifacts/acvp_sub_kdf108.txt)						|
|[AES-CFB1](./artifacts/acvp_sub_symmetric.txt)		|[SHA-224](./artifacts/acvp_sub_sha.txt)	|[CMAC-AES](./artifacts/acvp_sub_mac.txt)			|[ctrDRBG-AES-192](./artifacts/acvp_sub_drbg.txt)	|[RSA mode: sigGen](./artifacts/acvp_sub_rsa.txt)				|[KAS ECC fullMqv](./artifacts/acvp_sub_kas_ecc.txt)			|[Feedback KDF](./artifacts/acvp_sub_kdf108.txt)					|
|[AES-CFB8](./artifacts/acvp_sub_symmetric.txt)		|[SHA-256](./artifacts/acvp_sub_sha.txt)	|[CMAC-TDES](./artifacts/acvp_sub_mac.txt)			|[ctrDRBG-AES-256](./artifacts/acvp_sub_drbg.txt)	|[RSA mode: sigVer](./artifacts/acvp_sub_rsa.txt)				|[KAS ECC fullUnified](./artifacts/acvp_sub_kas_ecc.txt)		|[Double Pipeline Iterator KDF](./artifacts/acvp_sub_kdf108.txt)	|
|[AES-CFB128](./artifacts/acvp_sub_symmetric.txt)	|[SHA-384](./artifacts/acvp_sub_sha.txt)	|[HMAC-SHA-1](./artifacts/acvp_sub_mac.txt)			|[ctrDRBG-TDES](./artifacts/acvp_sub_drbg.txt)		|[RSA mode: signatureComponent](./artifacts/acvp_sub_rsa.txt)	|[KAS ECC onePassDh](./artifacts/acvp_sub_kas_ecc.txt)			|[IKEv1](./artifacts/acvp_sub_ikev1.txt)							|
|[AES-CTR](./artifacts/acvp_sub_symmetric.txt)		|[SHA-512](./artifacts/acvp_sub_sha.txt)	|[HMAC-SHA2-224](./artifacts/acvp_sub_mac.txt)		|[HASH DRBG](./artifacts/acvp_sub_drbg.txt)			|[RSA mode: decryptionComponent](./artifacts/acvp_sub_rsa.txt)	|[KAS ECC onePassMqv](./artifacts/acvp_sub_kas_ecc.txt)			|[IKEv2](./artifacts/acvp_sub_ikev2.txt)							|
|[AES-ECB](./artifacts/acvp_sub_symmetric.txt)		|[SHA-512/224](./artifacts/acvp_sub_sha.txt)|[HMAC-SHA2-256](./artifacts/acvp_sub_mac.txt)		|[HMAC DRBG](./artifacts/acvp_sub_drbg.txt)			|[RSA mode: legacySigVer](./artifacts/acvp_sub_rsa.txt)			|[KAS ECC OnePassUnified](./artifacts/acvp_sub_kas_ecc.txt)		|[SNMP](./artifacts/acvp_sub_snmp.txt)								|
|[AES-GCM](./artifacts/acvp_sub_symmetric.txt)		|[SHA-512/256](./artifacts/acvp_sub_sha.txt)|[HMAC-SHA2-384](./artifacts/acvp_sub_mac.txt)		|													|[ECDSA mode: sigGenComponent](./artifacts/acvp_sub_ecdsa.txt)	|[KAS ECC staticUnified](./artifacts/acvp_sub_kas_ecc.txt)		|[SRTP](./artifacts/acvp_sub_srtp.txt)								|
|[AES-KW](./artifacts/acvp_sub_symmetric.txt)		|[SHA3-224](./artifacts/acvp_sub_sha3.txt)	|[HMAC-SHA2-512](./artifacts/acvp_sub_mac.txt)		|													|[ECDSA mode: keyGen](./artifacts/acvp_sub_ecdsa.txt)			|[KAS ECC CDH-Component](./artifacts/acvp_sub_kas_ecc.txt)		|[SSH](./artifacts/acvp_sub_ssh.txt)								|
|[AES-KWP](./artifacts/acvp_sub_symmetric.txt)		|[SHA3-256](./artifacts/acvp_sub_sha3.txt)	|[HMAC-SHA2-512/224](./artifacts/acvp_sub_mac.txt)	|													|[ECDSA mode: keyVer](./artifacts/acvp_sub_ecdsa.txt)			|[KAS FFC dhHybrid1](./artifacts/acvp_sub_kas_ffc.txt)			|[TLS](./artifacts/acvp_sub_tls.txt)								|
|[AES-OFB](./artifacts/acvp_sub_symmetric.txt)		|[SHA3-384](./artifacts/acvp_sub_sha3.txt)	|[HMAC-SHA2-512/256](./artifacts/acvp_sub_mac.txt)	|													|[ECDSA mode: sigGen](./artifacts/acvp_sub_ecdsa.txt)			|[KAS FFC mqv2](./artifacts/acvp_sub_kas_ffc.txt)				|[TPM](./artifacts/acvp_sub_tpm.txt)								|
|[AES-XPN](./artifacts/acvp_sub_symmetric.txt)		|[SHA3-512](./artifacts/acvp_sub_sha3.txt)	|[HMAC-SHA3-224](./artifacts/acvp_sub_mac.txt)		|													|[ECDSA mode: sigVer](./artifacts/acvp_sub_ecdsa.txt)			|[KAS FFC dhEphem](./artifacts/acvp_sub_kas_ffc.txt)			|[ANSX9.63](./artifacts/acvp_sub_x963.txt)							|
|[AES-XTS](./artifacts/acvp_sub_symmetric.txt)		|[SHAKE-128](./artifacts/acvp_sub_sha3.txt)	|[HMAC-SHA3-256](./artifacts/acvp_sub_mac.txt)		|													|[DSA mode: keyGen](./artifacts/acvp_sub_dsa.txt)				|[KAS FFC dhHybridOneFlow](./artifacts/acvp_sub_kas_ffc.txt)	|																	|
|[TDES-CBC](./artifacts/acvp_sub_symmetric.txt)		|[SHAKE-256](./artifacts/acvp_sub_sha3.txt)	|[HMAC-SHA3-384](./artifacts/acvp_sub_mac.txt)		|													|[DSA mode: sigVer](./artifacts/acvp_sub_dsa.txt)				|[KAS FFC mqv1](./artifacts/acvp_sub_kas_ffc.txt)				|																	|
|[TDES-CBCI](./artifacts/acvp_sub_symmetric.txt)	|											|[HMAC-SHA3-512](./artifacts/acvp_sub_mac.txt)		|													|[DSA mode: sigGen](./artifacts/acvp_sub_dsa.txt)				|[KAS FFC dhOneFlow](./artifacts/acvp_sub_kas_ffc.txt)			|																	|
|[TDES-CFBP1](./artifacts/acvp_sub_symmetric.txt)	|											|													|													|[DSA mode: pqgGen](./artifacts/acvp_sub_dsa.txt)				|[KAS FFC dhStatic](./artifacts/acvp_sub_kas_ffc.txt)			|																	|
|[TDES-CFBP8](./artifacts/acvp_sub_symmetric.txt)	|											|													|													|[DSA mode: pqgVer](./artifacts/acvp_sub_dsa.txt)				|																|																	|
|[TDES-CFBP64](./artifacts/acvp_sub_symmetric.txt)	|											|													|													|																|																|																	|
|[TDES-CTR](./artifacts/acvp_sub_symmetric.txt)		|											|													|													|																|																|																	|
|[TDES-ECB](./artifacts/acvp_sub_symmetric.txt)		|											|													|													|																|																|																	|
|[TDES-KW](./artifacts/acvp_sub_symmetric.txt)		|											|													|													|																|																|																	|
|[TDES-OFB](./artifacts/acvp_sub_symmetric.txt)		|											|													|													|																|																|																	|
|[TDES-OFBI](./artifacts/acvp_sub_symmetric.txt)	|											|													|													|																|																|																	|

# Accessing the demo server

**=====================NOTICE=====================**

Please be aware that starting in the week of March 12th [the two-factor authentication and associated workflows](https://drive.google.com/open?id=1Ug8EGtbEwRZTyhHBn1rz5ZBOHcypF6A_) has been turned-on. The specification for the second factor authentication has been updated significantly since the first draft was posted for comments - please be sure to read the current version posted [here](https://drive.google.com/open?id=1Ug8EGtbEwRZTyhHBn1rz5ZBOHcypF6A_). By default two-factor authentication and the login workflow is required but there is a brief transition period available for those who wish to take advantage of it where it can be made optional.

From a practical standpoint not requiring two-factor authentication means that the additional login workflow step will not be required and access to the /validation/acvp/register endpoint will not require an authorization token, although authentication/authorization will still be provided through the TLS certificate. Subsequent interactions for the test session will require the JWT access token returned by the registration but this is no change from now. While not required, the login workflow step will still be available to allow for testing and to make sure that all will work once the two-factor authentication is required.

Please send a note to acvts-demo@nist.gov with your request to make two-factor authentication optional and we will follow-up with you.

**=====================NOTICE=====================**

The protocol spec and development information are available here. You may want to use the companion [ACVP client](https://github.com/cisco/libacvp) to jump start your work.

To access the [demo environment](https://demo.acvts.nist.gov/acvp/home) you will need to send your CSR to us. Please use a 2048-bit RSA key pair and sign using at least a SHA-256 hash. Please send a request to acvts-demo@nist.gov with 'CSR REQUEST FOR ACCESS TO DEMO' in the subject line. You will receive instructions for how to upload your CSR. 

You are expected to protect the key pair from unauthorized use and to notify NIST in the event the keypair becomes compromised. Also, since we do not have a formal login page the following notice applies when accessing the ACVP system:

“***WARNING***WARNING***WARNING
You are accessing a U.S. Government information system, which includes: 1) this computer, 2) this computer network, 3) all computers connected to this network, and 4) all devices and storage media attached to this network or to a computer on this network. You understand and consent to the following: you may access this information system for authorized use only; you have no reasonable expectation of privacy regarding any communication of data transiting or stored on this information system; at any time and for any lawful Government purpose, the Government may monitor, intercept, and search and seize any communication or data transiting or stored on this information system; and any communications or data transiting or stored on this information system may be disclosed or used for any lawful Government purpose.
***WARNING***WARNING***WARNING”

To set expectations, since this is a demo system, it will be in a state of flux and any all data on the system is considered temporary and may be reset to accommodate development of the Automated Cryptographic Validation Protocol (ACVP) service. We will try to keep the demo service relatively stable, but we plan to update it as we continue to add new algorithms and capabilities.

# Contribution guidelines:

If you want to contribute, please follow the simple rules below and send us pull requests. 

  - Updates to specs, JSON, etc should take place within the ./src/*.xml files.
  - Prior to commit, merge, pull request, `WindowsGenerateArtifacts.bat` (Windows) or `MakeFile` (non-Windows) should be run.
    - The running of the MakeFile (or its Windows equivalent) ensures that all artifacts (HTML and TXT) are kept up to date with src.

If you would like to talk to our developers, you may want to send email to our mailing list algotest@list.nist.gov. You may also report bugs or request new tests.


# Related projects
- [Automated Cryptographic Validation Testing](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing)
- [Cisco libacvp](https://github.com/cisco/libacvp)
- [Google Project Wycheproof](https://github.com/google/wycheproof)
- [HACL*, a formally verified cryptographic library written in F*](https://github.com/mitls/hacl-star)
- [Automated Module Validation Protocol](https://github.com/usnistgov/AMVP)

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
