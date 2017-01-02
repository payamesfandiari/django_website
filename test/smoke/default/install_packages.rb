# # encoding: utf-8

# Inspec test for recipe django_website::install_packages

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe yum.repo('epel') do
  it {should exist}
  it {should be_enabled}
end

describe yum.repo('ius') do
  it {should exist}
  it {should be_enabled}
end

describe command('python3.5 --version') do
  its(:stdout) {should match /3\.5/}
end


describe command('pip3.5') do
  it {should exist}
end

