# encoding: UTF-8
#
# Cookbook Name:: rackspace_timezone
# Recipe:: default
#
# Copyright 2010, James Harton <james@sociable.co.nz>
# Copyright 2013, Lawrence Leonard Gilbert <larry@L2G.to>
# Copyright 2013, fraD00r4 <frad00r4@gmail.com>
# Copyright 2014, Rackspace, US, Inc.
#
# Apache 2.0 License.
# Make sure the tzdata database is installed.

package 'tzdata' do
  action :install
end

case node['platform_family']
when 'debian'
  include_recipe "rackspace_timezone::debian"
when 'rhel'
  include_recipe "rackspace_timezone::rhel"
when 'redora'
  include_recipe "rackspace_timezone::fedora"
end
