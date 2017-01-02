# # encoding: utf-8

# Inspec test for recipe django_website::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  describe user('root') do
    it { should exist }
    skip 'This is an example test, replace with your own test.'
  end
end

describe port(80) do
  it { should_not be_listening }
  skip 'This is an example test, replace with your own test.'
end

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

