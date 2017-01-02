#
# Cookbook:: django_website
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'django_website::install_pip' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'installs the necessary packages' do
      expect(chef_run).to install_package('python35u')
      expect(chef_run).to install_package('python35u-pip')
    end
    it 'installs django framework' do
      expect(chef_run).to run_execute('pip3.5 install Django')
    end

  end
end
