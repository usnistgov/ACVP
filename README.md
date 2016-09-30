# ACVP
Industry Working Group on Automated Cryptographic Algorithm Validation

Contribution guidelines:

  - Updates to specs, JSON, etc should take place within the ./src/*.xml files.
  - Prior to commit, merge, pull request, `WindowsGenerateArtifacts.bat` (Windows) or `MakeFile` (non-Windows) should be run.
    - The running of the MakeFile (or its Windows equivalent) ensures that all artifacts (HTML and TXT) are kept up to date with src.
