describe parse_config_file('/etc/security/pwquality.conf') do
  its('minlen') { should eq '14' }
  its('dcredit') { should eq '-1' }
  its('ucredit') { should eq '-1' }
  its('ocredit') { should eq '-1' }
  its('lcredit') { should eq '-1' }
  its('minclass') { should eq '3' }
  its('maxrepeat') { should eq '0' }
  its('maxclassrepeat') { should eq '0' }
end
