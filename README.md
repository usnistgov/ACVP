# ACVP
Industry Working Group on Automated Cryptographic Algorithm Validation

# Background
The rapid development of cryptographic technology over the last two decades and its adoption in many different technology domains has resulted in a sharp increase in the number and complexity of approved algorithms. The volume of cryptographic algorithm validations has outstripped the available human resources available to test, report, and validate results. The plethora of different algorithms has created a dire need for consistent requesting and reporting of test data and results. We also live in times of unprecedented levels of threats and exploits that require frequent product updates to fix defects and remove security vulnerabilities, which in turn requires much faster turnaround of validation updates than what the existing validation model allows.

# Objective
The objective of this project is to define a protocol allowing independent implementation by all vendors participating in the NIST validation programs for accelerated test data generation and requisition, reporting of test results, and validation 
of cryptographic algorithms.

# Project Goals
The development of an Automated Cryptographic Validation Protocol (ACVP) that enables the generation and 
validation of standardized algorithm test evidence.

# Contribution guidelines:

If you want to contribute, please follow the simple rules below and send us pull requests. 

  - Updates to specs, JSON, etc should take place within the ./src/*.xml files.
  - Prior to commit, merge, pull request, `WindowsGenerateArtifacts.bat` (Windows) or `MakeFile` (non-Windows) should be run.
    - The running of the MakeFile (or its Windows equivalent) ensures that all artifacts (HTML and TXT) are kept up to date with src.

If you would like to talk to our developers, you may want to send email to our mailing list algotest@nist.gov. You may also report bugs or request new tests.

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


