name              "tcp_sack_fix"
description       "Implements a permanent fix to CVE-2019-11477 SACK Panic DoS"
long_description  IO.read(File.join(File.dirname(__FILE__), "README.md"))
maintainer        "Martin Peck"
maintainer_email  "coderman@protonmail.com"
version           "1.0.0"
supports          "ubuntu"
depends           "sysctl"
