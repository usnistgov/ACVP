# ACVP
The [Automated Cryptographic Validation Protocol](https://pages.nist.gov/ACVP/draft-fussell-acvp-spec.html) (ACVP) is a protocol to support a new National Voluntary Laboratory Accreditation Program (NVLAP) testing scope at the [National Institute of Standards and Technology (NIST)](https://www.nist.gov).  

The new testing scope, 17ACVT, is available, and defined in [NIST Handbook 150-17](https://nvlpubs.nist.gov/nistpubs/hb/2021/NIST.HB.150-17-2021.pdf).

All current information about ACVP protocol may be found within this Github project at https://github.com/usnistgov/ACVP. View the protocol documents at https://pages.nist.gov/ACVP/.

For issues regarding the actual ACVP Server implementation, as well as pre-release (demo) and release notes (prod), see the ACVP-Server repository: https://github.com/usnistgov/ACVP-Server/.

# Jump to
* [Background](#background)
* [How to use Metanorma](#how-to-use-metanorma)
* [Objective](#objective)
* [Project Goals](#project-goals)
* [Status](#status)
* [Supported Algorithms](#supported-algorithms)
  * [Block Cipher Modes](#block-cipher-modes)
  * [Secure Hash](#secure-hash)
  * [XOFs](#xofs)
  * [Message Authentication](#message-authentication)
  * [DRBG](#drbg)
  * [Digital Signature](#digital-signature)
  * [SP 800-56 Series Algorithms](#sp-800-56-series-algorithms)
  * [KDFs](#kdfs)
  * [Safe Primes](#safe-primes)
  * [Conditioning Components](#conditioning-components)
  * [Stateful Hash-Based Signatures](#stateful-hash-based-signatures)
  * [Stateless Hash-Based Signatures](#stateless-hash-based-signatures)
  * [Module-Lattice Algorithms](#module-lattice-algorithms)
* [Accessing the Server](#accessing-the-demo-server)
* [Contribution Guidelines](contribution-guidelines)
* [Related Projects](#related-projects)
* [Licensing Terms](#licensing-terms)

# Background
The rapid development of cryptographic technology over the last two decades and its adoption in many different technology domains has resulted in a sharp increase in the number and complexity of approved algorithms. The volume of cryptographic algorithm validations has outstripped the available human resources available to test, report, and validate results. The plethora of different algorithms has created a dire need for consistent requesting and reporting of test data and results. We also live in times of unprecedented levels of threats and exploits that require frequent product updates to fix defects and remove security vulnerabilities, which in turn requires much faster turnaround of validation updates than what the existing validation model allows. See the NIST [Automated Cryptographic Validation Testing project](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing) for broader context and information.

Requirements documents for the existing Cryptographic Algorithm Validation Program (CAVP) and the 17CAV scope can be found at https://nvlpubs.nist.gov/nistpubs/hb/2020/NIST.HB.150-2020.pdf. The requirements documents for the 17ACVT scope can be found on the same page.

General information about CAVP can be found at https://csrc.nist.gov/Projects/Cryptographic-Algorithm-Validation-Program with the CAVP management manual found at https://csrc.nist.gov/CSRC/media/Projects/Cryptographic-Algorithm-Validation-Program/documents/CAVPMM.pdf and the FAQ at https://csrc.nist.gov/CSRC/media/Projects/Cryptographic-Algorithm-Validation-Program/documents/CAVPFAQ.pdf.

# How to use Metanorma

Using Metanorma is not required to view the documents in the GitHub repository. When changes occur, documents will automatically be built and deployed to https://pages.nist.gov/ACVP.

Metanorma is a library for writing standards. It can compile `.adoc` files into multiple common standards formats including the IETF's RFC format.

Use the instructions here to set up Metanorma: https://www.metanorma.org/install/

To compile an individual file, to make sure your gem versions are up to date run

```
gem install metanorma-cli
```

From there run

```
metanorma compile -t ietf -x html file.adoc
```

You can switch between `-x html` and `-x txt` for different RFC output formats.

If you make changes to a file that's referenced by a top level spec, run metanorma
on the referenced file prior to running it on the top level file. E.g.,

```
metanorma compile -t ietf -x html symmetric/sections/04-testtypes.adoc
metanorma compile -t ietf -x html draft-celi-acvp-symmetric.adoc
```

Or you can use the `Makefile` which is available.

To build all documents, html and txt

```
make all
```

To build a specific file

```
make specific-file.html
```

To remove all xml, txt, html, err produces files,

```
make clean
```

# Objective
The objective of this project is to define a protocol allowing independent implementation by all vendors participating in the NIST cryptographic validation programs ([CAVP](https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program#) and [CMVP](https://csrc.nist.gov/projects/cryptographic-module-validation-program#)) for accelerated test data generation and requisition, reporting of test results, and validation of NIST-approved cryptographic algorithms (see FIPS140-2 [Annex A](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexa.pdf), [Annex C](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexc.pdf) and [Annex D](https://csrc.nist.gov/CSRC/media/Publications/fips/140/2/final/documents/fips1402annexd.pdf)). For FIPS140-3, the NIST-approved cryptographic algorithms are defined in the [SP800-140 Document Series](https://csrc.nist.gov/publications/detail/sp/800-140/final).

# Project Goals
The development of an Automated Cryptographic Validation Protocol (ACVP) that enables the generation and
validation of standardized algorithm test evidence to facilitate the [modernization](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing) of [CAVP](https://csrc.nist.gov/projects/cryptographic-algorithm-validation-program#) and [CMVP](https://csrc.nist.gov/projects/cryptographic-module-validation-program).

# Status
The demo server (demo.acvts.nist.gov) supports ACVP version 1.0. All endpoints defined in the [protocol specification](https://pages.nist.gov/ACVP/draft-fussell-acvp-spec.html) are available. Some additional endpoinds defined in https://github.com/usnistgov/ACVP-Server are also available but not considered part of this protocol.

The prod server (acvts.nist.gov) also supports ACVP version 1.0, with the same endpoints defined.

## Supported Algorithms

### Block Cipher Modes
* [AES-CBC](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-CFB1](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-CFB8](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-CFB128](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-CTR](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-ECB](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-GCM](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-GCM-SIV](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html) - DEMO only
* [AES-KW](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-KWP](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-OFB](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-XPN](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-XTS 1.0](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html) - no longer supported by ACVTS
* [AES-XTS 2.0](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-FF1](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-FF3-1](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html) - DEMO only
* [TDES-CBC](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-CBCI](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-CFB1](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-CFB8](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-CFB64](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-CFBP1](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-CFBP8](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-CFBP64](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-CTR](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-ECB](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-KW](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-OFB](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [TDES-OFBI](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)

### Secure Hash
* [SHA-1](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.html)
* [SHA-224](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.html)
* [SHA-256](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.html)
* [SHA-384](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.html)
* [SHA-512](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.html)
* [SHA-512/224](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.html)
* [SHA-512/256](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha.html)
* [SHA3-224 1.0](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.html) - no longer supported by ACVTS
* [SHA3-256 1.0](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.html) - no longer supported by ACVTS
* [SHA3-384 1.0](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.html) - no longer supported by ACVTS
* [SHA3-512 1.0](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.html) - no longer supported by ACVTS
* [SHA3-224 2.0](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.html)
* [SHA3-256 2.0](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.html)
* [SHA3-384 2.0](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.html)
* [SHA3-512 2.0](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.html)

### XOFs
* [SHAKE-128](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.html)
* [SHAKE-256](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-sha3.html)
* [cSHAKE-128](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.html)
* [cSHAKE-256](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.html)
* [KMAC-128](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.html)
* [KMAC-256](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.html)
* [ParallelHash-128](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.html)
* [ParallelHash-256](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.html)
* [TupleHash-128](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.html)
* [TupleHash-256](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-xof.html)

### Message Authentication
* [AES-CCM](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-symmetric.html)
* [AES-GMAC](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [CMAC-AES](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [CMAC-TDES](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA-1](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA2-224](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA2-256](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA2-384](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA2-512](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA2-512/224](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA2-512/256](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA3-224](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA3-256](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA3-384](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)
* [HMAC-SHA3-512](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-mac.html)

### DRBG
* [ctrDRBG-AES-128](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.txt) - [HTML](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.html)
* [ctrDRBG-AES-192](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.txt) - [HTML](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.html)
* [ctrDRBG-AES-256](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.txt) - [HTML](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.html)
* [ctrDRBG-TDES](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.txt) - [HTML](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.html)
* [HASH DRBG](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.txt) - [HTML](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.html)
* [HMAC DRBG](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.txt) - [HTML](https://pages.nist.gov/ACVP/draft-vassilev-acvp-drbg.html)

### Digital Signature
* [RSA mode: keyGen](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.html)
* [RSA mode: sigGen](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.html)
* [RSA mode: sigVer](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.html)
* [RSA mode: signaturePrimitive 1.0 (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.html)
* [RSA mode: signaturePrimitive 2.0 (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.html)
* [RSA mode: decryptionPrimitive 1.0 (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.html)
* [RSA mode: decryptionPrimitive Sp800-56Br2 (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.html)
* [RSA mode: legacySigVer](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-rsa.html)
* [ECDSA mode: sigGen Component](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.html)
* [ECDSA mode: keyGen](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.html)
* [ECDSA mode: keyVer](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.html)
* [ECDSA mode: sigGen](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.html)
* [Deterministic ECDSA mode: sigGen](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.html)
* [ECDSA mode: sigVer](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-ecdsa.html)
* [DSA mode: keyGen](https://pages.nist.gov/ACVP/draft-fussell-acvp-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-dsa.html)
* [DSA mode: sigVer](https://pages.nist.gov/ACVP/draft-fussell-acvp-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-dsa.html)
* [DSA mode: sigGen](https://pages.nist.gov/ACVP/draft-fussell-acvp-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-dsa.html)
* [DSA mode: pqgGen](https://pages.nist.gov/ACVP/draft-fussell-acvp-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-dsa.html)
* [DSA mode: pqgVer](https://pages.nist.gov/ACVP/draft-fussell-acvp-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-dsa.html)
* [EDDSA mode: keyGen](https://pages.nist.gov/ACVP/draft-celi-acvp-eddsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-eddsa.html)
* [EDDSA mode: keyVer](https://pages.nist.gov/ACVP/draft-celi-acvp-eddsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-eddsa.html)
* [EDDSA mode: sigGen](https://pages.nist.gov/ACVP/draft-celi-acvp-eddsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-eddsa.html)
* [EDDSA mode: sigVer](https://pages.nist.gov/ACVP/draft-celi-acvp-eddsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-eddsa.html)

### SP 800-56 Series Algorithms
#### Full KAS and KTS IFC Testing

Tests against shared secret computation (SSC), key derivation functions (KDF) or key derivation algorithms (KDA), and optionally key confirmation (KC). Test vectors issued under this set of tests (with the exception of 1.0 component based tests) are considered "full KAS" testing.

* [KAS ECC ephemeralUnified](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC fullMqv](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC fullUnified](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC onePassDh](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC onePassMqv](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC OnePassUnified](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC staticUnified](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS FFC dhHybrid1](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC mqv2](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC dhEphem](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC dhHybridOneFlow](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC mqv1](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC dhOneFlow](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC dhStatic](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS ECC ephemeralUnified Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.html)
* [KAS ECC fullMqv Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.html)
* [KAS ECC fullUnified Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.html)
* [KAS ECC onePassDh Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.html)
* [KAS ECC onePassMqv Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.html)
* [KAS ECC OnePassUnified Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.html)
* [KAS ECC staticUnified Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.html)
* [KAS ECC CDH-Component Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ecc-sp800-56ar3.html)
* [KAS FFC dhHybrid1 Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.html)
* [KAS FFC mqv2 Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.html)
* [KAS FFC dhEphem Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.html)
* [KAS FFC dhHybridOneFlow Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.html)
* [KAS FFC mqv1 Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.html)
* [KAS FFC dhOneFlow Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.html)
* [KAS FFC dhStatic Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ffc-sp800-56ar3.html)
* [KAS IFC KAS1-basic](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.html)
* [KAS IFC KAS1-Party_V-confirmation](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.html)
* [KAS IFC KAS2-basic](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.html)
* [KAS IFC KAS2-bilateral-confirmation](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.html)
* [KAS IFC KAS2-Party_U-confirmation](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.html)
* [KAS IFC KAS2-Party_V-confirmation](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.html)
* [KTS IFC KTS-OAEP-basic](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.html)
* [KTS IFC KTS-OAEP-Party_V-confirmation](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ifc.html)

#### KAS SSC Testing

Standalone KAS SSC testing from SP800-56A/B. Can be used in conjunction with KDF/KDA testing and optionally key confirmation testing (as opposed to "full KAS" testing) to be considered a valid KAS implementation.

* [KAS ECC ephemeralUnified](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC fullMqv](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC fullUnified](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC onePassDh](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC onePassMqv](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC OnePassUnified](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC staticUnified](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS ECC CDH-Component](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ecc.html)
* [KAS FFC dhHybrid1](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC mqv2](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC dhEphem](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC dhHybridOneFlow](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC mqv1](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC dhOneFlow](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS FFC dhStatic](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-fussell-acvp-kas-ffc.html)
* [KAS ECC SSC ephemeralUnified Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.html)
* [KAS ECC SSC fullMqv Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.html)
* [KAS ECC SSC fullUnified Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.html)
* [KAS ECC SSC onePassDh Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.html)
* [KAS ECC SSC onePassMqv Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.html)
* [KAS ECC SSC OnePassUnified Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.html)
* [KAS ECC SSC staticUnified Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ecc.html)
* [KAS FFC SSC dhHybrid1 Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.html)
* [KAS FFC SSC mqv2 Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.html)
* [KAS FFC SSC dhEphem Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.html)
* [KAS FFC SSC dhHybridOneFlow Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.html)
* [KAS FFC SSC mqv1 Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.html)
* [KAS FFC SSC dhOneFlow Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.html)
* [KAS FFC SSC dhStatic Sp800-56Ar3](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ffc.html)
* [KAS IFC SSC KAS1 Sp800-56Br2](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ifc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ifc.html)
* [KAS IFC SSC KAS2 Sp800-56Br2](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ifc.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-ssc-ifc.html)

#### KDA Testing SP800-56Cr1/r2

Standalone KDA testing from SP800-56Cr1 or SP800-56Cr2. Can be used in conjunction with SSC testing and optionally key confirmation testing (as opposed to "full KAS" testing) to be considered a valid KAS implementation.

* [KDA HKDF Sp800-56Cr1](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-hkdf.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-hkdf.html)
* [KDA OneStep Sp800-56Cr1](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-onestep.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-onestep.html)
* [KDA TwoStep Sp800-56Cr1](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-twostep.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-twostep.html)
* [KDA HKDF Sp800-56Cr2](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-hkdf.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-hkdf.html)
* [KDA OneStep Sp800-56Cr2](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-onestep.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-onestep.html)
* [KDA OneStepNoCounter Sp800-56Cr2](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-onestepnocounter.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-onestepnocounter.html)
* [KDA TwoStep Sp800-56Cr2](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-twostep.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kdf-twostep.html)

#### KAS KC Testing SP800-56

  Standalone KAS Key Confirmation testing from SP800-56Ar3 and/or SP800-56Br2.  Can be as a KC primitive validation as a part of a KAS validation.

* [KAS KC Sp800-56 (Component)](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kc-sp800-56.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kas-kc-sp800-56.html)

### KDFs
* [Counter KDF](https://pages.nist.gov/ACVP/draft-celi-acvp-kbkdf.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kbkdf.html)
* [Feedback KDF](https://pages.nist.gov/ACVP/draft-celi-acvp-kbkdf.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kbkdf.html)
* [Double Pipeline Iterator KDF](https://pages.nist.gov/ACVP/draft-celi-acvp-kbkdf.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kbkdf.html)
* [KMAC KDF](https://pages.nist.gov/ACVP/draft-celi-acvp-kbkdf.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kbkdf.html)
* [IKEv1 (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-ikev1.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-ikev1.html)
* [IKEv2 (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-ikev2.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-ikev2.html)
* [SNMP (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-snmp.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-snmp.html)
* [SRTP (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-srtp.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-srtp.html)
* [SSH (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-ssh.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-ssh.html)
* [TLS v1.0/v1.1 (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-tls.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-tls.html)
* [TLS v1.2 (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-tls.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-tls.html)
* [TLS v1.3 (Component)](https://pages.nist.gov/ACVP/draft-hammett-acvp-kdf-tls-v1.3.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-kdf-tls-v1.3.html)
* [TPM (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-tpm.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-tpm.html)
* [ANSX9.63 (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-ansi-x963.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-ansi-x963.html)
* [ANSX9.42 (Component)](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-ansi-x942.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-kdf-ansi-x942.html)
* [PBKDF](https://pages.nist.gov/ACVP/draft-celi-acvp-pbkdf.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-pbkdf.html)

### Safe Primes
* [SafePrimes KeyGen](https://pages.nist.gov/ACVP/draft-hammett-acvp-safe-primes.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-safe-primes.html)
* [SafePrimes KeyVer](https://pages.nist.gov/ACVP/draft-hammett-acvp-safe-primes.txt) - [HTML](https://pages.nist.gov/ACVP/draft-hammett-acvp-safe-primes.html)

### Conditioning Components
* [ConditioningComponent AES-CBC-MAC](https://pages.nist.gov/ACVP/draft-celi-acvp-conditioning-components.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-conditioning-components.html)
* [ConditioningComponent BlockCipher_DF](https://pages.nist.gov/ACVP/draft-celi-acvp-conditioning-components.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-conditioning-components.html)
* [ConditioningComponent Hash_DF](https://pages.nist.gov/ACVP/draft-celi-acvp-conditioning-components.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-conditioning-components.html)

### Stateful Hash-Based Signatures
* [LMS keyGen](https://pages.nist.gov/ACVP/draft-celi-acvp-lms.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-lms.html)
* [LMS sigGen](https://pages.nist.gov/ACVP/draft-celi-acvp-lms.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-lms.html)
* [LMS sigVer](https://pages.nist.gov/ACVP/draft-celi-acvp-lms.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-lms.html)

### Stateless Hash-Based Signatures
* [SLH-DSA keyGen](https://pages.nist.gov/ACVP/draft-livelsberger-acvp-slh-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-livelsberger-acvp-slh-dsa.html)
* [SLH-DSA sigGen](https://pages.nist.gov/ACVP/draft-livelsberger-acvp-slh-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-livelsberger-acvp-slh-dsa.html)
* [SLH-DSA sigVer](https://pages.nist.gov/ACVP/draft-livelsberger-acvp-slh-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-livelsberger-acvp-slh-dsa.html)

### Module-Lattice Algorithms
* [ML-DSA keyGen](https://pages.nist.gov/ACVP/draft-celi-acvp-ml-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-ml-dsa.html)
* [ML-DSA sigGen](https://pages.nist.gov/ACVP/draft-celi-acvp-ml-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-ml-dsa.html)
* [ML-DSA sigVer](https://pages.nist.gov/ACVP/draft-celi-acvp-ml-dsa.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-ml-dsa.html)
* [ML-KEM keyGen](https://pages.nist.gov/ACVP/draft-celi-acvp-ml-kem.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-ml-kem.html)
* [ML-KEM encapDecap](https://pages.nist.gov/ACVP/draft-celi-acvp-ml-kem.txt) - [HTML](https://pages.nist.gov/ACVP/draft-celi-acvp-ml-kem.html)

See [the algorithm endpoint](https://pages.nist.gov/ACVP/draft-fussell-acvp-spec.html#name-algorithms) to learn which algorithms are available on a given ACVP server.

# Accessing the Demo Server

To access the demo server one needs a TLS credential **and** a one-time password (OTP). The [protocol specification](https://pages.nist.gov/ACVP/draft-fussell-acvp-spec.html) and other development information are available in this repository. You may want to use the companion [ACVP client](https://github.com/cisco/libacvp) to jump-start your work.

To set expectations, since this is a demo system, it will be in a state of flux and any all data on the system is considered temporary and may be reset to accommodate development of the Automated Cryptographic Validation Protocol (ACVP) service. We will try to keep the demo service relatively stable, but we plan to update it as we continue to add new algorithms and capabilities.

To access the prod server, first you must demonstrate compentency on the demo server. Then follow the instructions available at https://csrc.nist.gov/Projects/cryptographic-algorithm-validation-program/how-to-access-acvts.

## Obtaining TLS credentials

To access the demo environment you will need to send your CSR to NIST. Please use a 2048-bit RSA key pair and sign using at least a SHA-256 hash. Please send the request to acvts-demo@nist.gov with 'CSR REQUEST FOR ACCESS TO DEMO' in the subject line. You will receive instructions for how to upload your CSR.

You are expected to protect the key pair from unauthorized use and to notify NIST in the event the keypair becomes compromised. Also, since we do not have a formal login page the following notice applies when accessing the ACVP system:

```
"***WARNING***WARNING***WARNING
You are accessing a U.S. Government information system, which includes: 1) this computer, 2) this computer network, 3) all computers connected to this network, and 4) all devices and storage media attached to this network or to a computer on this network. You understand and consent to the following: you may access this information system for authorized use only; you have no reasonable expectation of privacy regarding any communication of data transiting or stored on this information system; at any time and for any lawful Government purpose, the Government may monitor, intercept, and search and seize any communication or data transiting or stored on this information system; and any communications or data transiting or stored on this information system may be disclosed or used for any lawful Government purpose.
***WARNING***WARNING***WARNING"
```

## Configuring and using One-Time-Passwords (OTP)

TOTP has been configured on all servers. See details [here](https://github.com/usnistgov/ACVP/wiki#second-factor-authentication-and-authorization-schema-for-accessing-and-working-with-the-nist-automated-cryptographic-validation-services).

## Renewing TLS credentials

Credentials are valid for a period of two years and will then expire. To renew your credentials, please send an email to acvts-demo@nist.gov with the subject 'ACVTS DEMO CREDENTIAL RENEWAL REQUEST' in the subject line. You will receive further instructions via email regarding the renewal process.

# Contribution Guidelines

If you want to contribute, please follow the simple rules below and send us pull requests.

- See [Metanorma](#how-to-use-metanorma) for installation instructions
- Documents are templated out and organized into folders, find and edit the appropriate document and build the HTML or TXT file to ensure the changes are correct
- Create a Pull Request with the updated ADOC files. GitHub Actions will verify the files can compile.
- Once approved by a NIST member, GitHub Actions will rebuild the `nist-pages` branch to be reflected on https://pages.nist.gov/ACVP

If you would like to talk to our developers, you may want to send email to our mailing list cavp (at) nist.gov. You may also report bugs or request new tests.

# Related Projects
- [ACVP Server](https://github.com/usnistgov/ACVP-Server/) (Release/Issue tracking for NIST's implementation of the ACVP protocol)
- [Automated Cryptographic Validation Testing](https://csrc.nist.gov/Projects/Automated-Cryptographic-Validation-Testing)
- [Cisco libacvp](https://github.com/cisco/libacvp)
- [Google Project Wycheproof](https://github.com/google/wycheproof)
- [HACL\*, a formally verified cryptographic library written in F\*](https://github.com/mitls/hacl-star)
- [Automated Module Validation Protocol](https://github.com/usnistgov/AMVP)
- [ACVP Proxy](https://github.com/smuellerDD/acvpproxy)
- [ACVP Parser](https://github.com/smuellerDD/acvpparser)

# Licensing Terms

This data was developed by employees of the National Institute of Standards and Technology (NIST), an agency of the Federal Government, in collaboration with third-party contributors. Pursuant to title 17 United States Code Section 105, works of NIST employees are not subject to copyright protection in the United States and are considered to be in the public domain. The data is provided by NIST as a public service and is expressly provided "AS IS." NIST MAKES NO WARRANTY OF ANY KIND, EXPRESS, IMPLIED OR STATUTORY, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT AND DATA ACCURACY. NIST does not warrant or make any representations regarding the use of the data or the results thereof, including but not limited to the correctness, accuracy, reliability or usefulness of the data. NIST SHALL NOT BE LIABLE AND YOU HEREBY RELEASE NIST FROM LIABILITY FOR ANY INDIRECT, CONSEQUENTIAL, SPECIAL, OR INCIDENTAL DAMAGES (INCLUDING DAMAGES FOR LOSS OF BUSINESS PROFITS, BUSINESS INTERRUPTION, LOSS OF BUSINESS INFORMATION, AND THE LIKE), WHETHER ARISING IN TORT, CONTRACT, OR OTHERWISE, ARISING FROM OR RELATING TO THE DATA (OR THE USE OF OR INABILITY TO USE THIS DATA), EVEN IF NIST HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

To the extent that NIST may hold copyright in countries other than the United States, you are hereby granted the non-exclusive irrevocable and unconditional right to print, publish, prepare derivative works and distribute the NIST data, in any medium, or authorize others to do so on your behalf, on a royalty-free basis throughout the world.

You may improve, modify, and create derivative works of the data or any portion of the data, and you may copy and distribute such modifications or works. Modified works should carry a notice stating that you changed the data and should note the date and nature of any such change. Please explicitly acknowledge the National Institute of Standards and Technology as the source of the data: Data citation recommendations are provided below. Permission to use this data is contingent upon your acceptance of the terms of this agreement and upon your providing appropriate acknowledgments of NIST's creation of the data.

## Citation Format

Author/editor (Publication Year), Title, Publisher, Persistent Identifier (PID) or URL (Access date).
