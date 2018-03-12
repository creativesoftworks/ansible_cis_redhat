describe file('/etc/pam.d/password-auth') do
  its('content') { should match /password\s+requisite\s+pam_cracklib.so.*retry=3\sminlen=14\sdcredit=-1\sucredit=-1\socredit=-1\slcredit=-1\sminclass=3\smaxrepeat=0\smaxclassrepeat=0/ }
  its('content') { should match /password\s+sufficient\s+pam_unix.so\ssha512/ }
  its('content') { should match /auth\s+required\s+pam_faillock.so.*deny=5\sunlock_time=900/ }
end

describe file('/etc/pam.d/system-auth') do
  its('content') { should match /password\s+required\s+pam_cracklib.so.*retry=3\sminlen=14\sdcredit=-1\sucredit=-1\socredit=-1\slcredit=-1\sminclass=3\smaxrepeat=0\smaxclassrepeat=0/ }
  its('content') { should match /password\s+sufficient\s+pam_unix.so\ssha512/ }
  its('content') { should match /auth\s+required\s+pam_faillock.so.*deny=5\sunlock_time=900/ }
end
