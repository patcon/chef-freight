#
# Cookbook Name:: freight
# Recipe:: default
# 
# Author:: Patrick Connolly <patrick@myplanetdigital.com>
#
# Copyright 2011, Myplanet Digital
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

apt_repository "rcrowley" do
  uri "http://packages.rcrowley.org"
  distribution node['lsb']['codename']
  components [ "main" ]
  key "http://packages.rcrowley.org/keyring.gpg"
  action :add
end

require_recipe 'gpg'

package "freight"

template "/etc/freight.conf" do
  source "freight.conf.erb"
  owner "root"
  group "root"
  mode "0644"
end
