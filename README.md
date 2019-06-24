# Fix CVE-2019-11477 SACK Panic Denial of Service

### Introduction

This cookbook is a useful example of basic chef functionality. Consisting of just two components, the metadata and the recipe, it is a good example for teaching core chef concepts.

### Default Recipe

The default recipe sets a sysctl variable:

    net.ipv4.tcp_sack = 0

With SACK disabled, the DoS attack described in [TCP SACK PANIC - Kernel vulnerabilities](https://access.redhat.com/security/vulnerabilities/tcpsack) is mitigated.

### Usage

Per usual, upload the cookbook to your chef server:

    $ knife upload ./tcp_sack_fix

Then add to the run list for your Linux clients or a common role they share.

### Confirmation

Use the sysctl utility for confirmation that the change has been applied.

    $ sysctl net.ipv4.tcp_sack
    net.ipv4.tcp_sack = 0

---
