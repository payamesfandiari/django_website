#
# Cookbook:: django_website
# Recipe:: install_pip
#
# Copyright:: 2017, The Authors, All Rights Reserved.


package 'python35u'
package 'python35u-pip'

execute 'pip3.5 install Django'
