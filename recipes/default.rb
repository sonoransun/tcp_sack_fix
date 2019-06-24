#
# Cookbook Name:: tcp_sack_fix
# Recipe:: default
#

include_recipe "sysctl"

# Permanent fix for TCP SACK DoS: https://access.redhat.com/security/vulnerabilities/tcpsack
# NOTE: we don't alter MSS settings; this is sufficient.
#
sysctl_param 'net.ipv4.tcp_sack' do
  value 0
  ignore_error true
end

