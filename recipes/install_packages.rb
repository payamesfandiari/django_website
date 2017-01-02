#
# Cookbook:: django_website
# Recipe:: install_packages
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'epel-release'

rpm_package 'ius-release' do
  source 'https://centos7.iuscommunity.org/ius-release.rpm'
end

package 'python35u'

package 'python35u-pip'
