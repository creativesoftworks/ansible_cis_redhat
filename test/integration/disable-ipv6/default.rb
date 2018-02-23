describe file('/etc/modprobe.d/ipv6.conf') do
  its('content') { should include('options ipv6 disable=1') }
end
