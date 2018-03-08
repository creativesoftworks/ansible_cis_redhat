describe file('/etc/pam.d/password-auth') do
  its('content') { should include('password    requisite     pam_cracklib.so try_first_pass retry=3 minlen=14 dcredit=-1 ucredit=-1 ocredit=-1 lcredit=-1 minclass=3 maxrepeat=0 maxclassrepeat=0') }
  its('content') { should include('password    sufficient    pam_unix.so sha512') }
end

describe file('/etc/pam.d/system-auth') do
  its('content') { should include('password    required      pam_cracklib.so try_first_pass retry=3 minlen=14 dcredit=-1 ucredit=-1 ocredit=-1 lcredit=-1 minclass=3 maxrepeat=0 maxclassrepeat=0') }
  its('content') { should include('password    sufficient    pam_unix.so sha512') }
end
