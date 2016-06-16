#
# Cookbook Name:: docker4me
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
docker_service 'default' do
  action [:create, :start]
end


bash "pip" do
  code <<-EOS
  sudo pip install --upgrade pip
  sudo pip install docker-compose
  EOS
end


bash "docker-compose" do
  code <<-EOS
  sudo pip install docker-compose --upgrade
  EOS
end