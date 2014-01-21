#
# Cookbook Name:: rackspace_timezone
# Test:: default_spec
#
# Author:: Christopher Coffey (<christopher.coffey@rackspace.com)
#
# Copyright 2014, Rackspace, US, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'spec_helper'

describe 'rackspace_timezone::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'install tzdata' do
    expect(chef_run).to install_package('tzdata')
  end
end
