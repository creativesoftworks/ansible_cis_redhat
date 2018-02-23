describe parse_config_file('/etc/default/useradd') do
  its('INACTIVE') { should eq '7' }
end
