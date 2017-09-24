#
# Cookbook:: cb_youtube-dl
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'pip::default'

cookbook_file '/etc/cron.weekly/youtube-dl.sh' do
  source 'youtube-dl.sh'
  owner 'root'
  group 'root'
  mode '0740'
  action :create
end

execute 'install_youtube-dl' do
  command '/usr/bin/pip install youtube-dl'
  only_if { !File.exist?('/usr/bin/youtube-dl') }
end
