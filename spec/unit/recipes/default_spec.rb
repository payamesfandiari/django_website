#
# Cookbook:: django_website
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'django_website::default' do
  describe command('django-admin --version') do
    its(:stdout) { should match(/1.10.*/)}
  end
end
