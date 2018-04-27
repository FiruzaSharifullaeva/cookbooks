#
# Cookbook Name:: app
# Recipe:: default
#
# Copyright 2018, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#user 'firuza' do
#  comment 'default user'
#  system true
#  shell '/bin/false'
#end
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
include_recipe "rbenv::rbenv_vars"


user "web" do
    home '/home/web'
    shell '/bin/bash'
  end

remote_directory "/home/web" do
    user 'web'
    files_owner 'web'
    source 'homeweb'
  end


