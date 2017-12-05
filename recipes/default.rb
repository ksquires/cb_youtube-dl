#
# Cookbook:: cb_youtube-dl
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'my_yum_epel::default'

package 'youtube-dl' do
  action :upgrade
end

