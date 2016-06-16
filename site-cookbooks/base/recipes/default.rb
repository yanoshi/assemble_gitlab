#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

yum_package "yum-fastestmirror" do
  action :install
end

yum_package "epel-release" do
 action :install
end

yum_package "lvm2" do
 action :upgrade
end

yum_package "python-pip" do
 action :install
end

bash "python_update" do
  code "sudo yum upgrade -y python*"
end

bash "groupadd" do
  code <<-EOS
  sudo gpasswd -a vagrant vboxsf
  sudo gpasswd -a root vboxsf
  EOS
end



