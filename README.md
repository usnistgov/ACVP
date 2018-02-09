# ACVP
Industry Working Group on Automated Cryptographic Algorithm Validation

# Background
The rapid development of cryptographic technology over the last two decades and its adoption in many different technology domains has resulted in a sharp increase in the number and complexity of approved algorithms. The volume of cryptographic algorithm validations has outstripped the available human resources available to test, report, and validate results. The plethora of different algorithms has created a dire need for consistent requesting and reporting of test data and results. We also live in times of unprecedented levels of threats and exploits that require frequent product updates to fix defects and remove security vulnerabilities, which in turn requires much faster turnaround of validation updates than what the existing validation model allows. See the NIST [Automated Cryptographic Validation Testing project](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing) for broader context and information. 

# Objective
The objective of this project is to define a protocol allowing independent implementation by all vendors participating in the NIST validation programs for accelerated test data generation and requisition, reporting of test results, and validation 
of cryptographic algorithms.

# Project Goals
The development of an Automated Cryptographic Validation Protocol (ACVP) that enables the generation and 
validation of standardized algorithm test evidence.

# Status
The demo server supports ACVP, version 0.4 and currently allows validation of the following algorithms :

Block Ciphers and Modes of Operation:

- [AES-CBC](./artifacts/acvp_sub_symmetric.txt)
- [AES-CCM](./artifacts/acvp_sub_symmetric.txt)
- [AES-CFB1](./artifacts/acvp_sub_symmetric.txt)
- [AES-CFB8](./artifacts/acvp_sub_symmetric.txt)
- [AES-CFB128](./artifacts/acvp_sub_symmetric.txt)
- [AES-CTR](./artifacts/acvp_sub_symmetric.txt)    
- [AES-ECB](./artifacts/acvp_sub_symmetric.txt)
- [AES-GCM](./artifacts/acvp_sub_symmetric.txt)
- [AES-KW](./artifacts/acvp_sub_symmetric.txt)
- [AES-KWP](./artifacts/acvp_sub_symmetric.txt)
- [AES-OFB](./artifacts/acvp_sub_symmetric.txt)
- [AES-XPN](./artifacts/acvp_sub_symmetric.txt)
- [AES-XTS](./artifacts/acvp_sub_symmetric.txt)
- [CMAC-AES](./artifacts/acvp_sub_mac.txt)
- [CMAC-TDES](./artifacts/acvp_sub_mac.txt)
- [TDES-CBC](./artifacts/acvp_sub_symmetric.txt)
- [TDES-CBCI](./artifacts/acvp_sub_symmetric.txt)
- [TDES-CFBP1](./artifacts/acvp_sub_symmetric.txt)
- [TDES-CFBP8](./artifacts/acvp_sub_symmetric.txt)
- [TDES-CFBP64](./artifacts/acvp_sub_symmetric.txt)
- [TDES-CTR](./artifacts/acvp_sub_symmetric.txt)
- [TDES-ECB](./artifacts/acvp_sub_symmetric.txt)
- [TDES-KW](./artifacts/acvp_sub_symmetric.txt)
- [TDES-OFB](./artifacts/acvp_sub_symmetric.txt)
- [TDES-OFBI](./artifacts/acvp_sub_symmetric.txt)

Secure Hash Algorithms

- [SHA-1](./artifacts/acvp_sub_sha.txt)
- [SHA-224](./artifacts/acvp_sub_sha.txt)
- [SHA-256](./artifacts/acvp_sub_sha.txt)
- [SHA-384](./artifacts/acvp_sub_sha.txt)
- [SHA-512](./artifacts/acvp_sub_sha.txt)
- [SHA-512/224](./artifacts/acvp_sub_sha.txt)
- [SHA-512/256](./artifacts/acvp_sub_sha.txt)
- [SHA3-224](./artifacts/acvp_sub_sha3.txt)
- [SHA3-256](./artifacts/acvp_sub_sha3.txt)
- [SHA3-384](./artifacts/acvp_sub_sha3.txt)
- [SHA3-512](./artifacts/acvp_sub_sha3.txt)
- [SHAKE-128](./artifacts/acvp_sub_sha3.txt)
- [SHAKE-256](./artifacts/acvp_sub_sha3.txt)

Message Authentication Algorithms

- [HMAC-SHA-1](./artifacts/acvp_sub_mac.txt)
- [HMAC-SHA2-224](./artifacts/acvp_sub_mac.txt)
- [HMAC-SHA2-256](./artifacts/acvp_sub_mac.txt)
- [HMAC-SHA2-384](./artifacts/acvp_sub_mac.txt)
- [HMAC-SHA2-512](./artifacts/acvp_sub_mac.txt)
- [HMAC-SHA2-512/224](./artifacts/acvp_sub_mac.txt)
- [HMAC-SHA2-512/256](./artifacts/acvp_sub_mac.txt)
- [HMAC-SHA3-224](./artifacts/acvp_sub_mac.txt)
- [HMAC-SHA3-256](./artifacts/acvp_sub_mac.txt)
- [HMAC-SHA3-384](./artifacts/acvp_sub_mac.txt)
- [HMAC-SHA3-512](./artifacts/acvp_sub_mac.txt)

We continue to work on adding support for additional algorithms, so stay tuned for updates. 

# Accessing the demo server

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


