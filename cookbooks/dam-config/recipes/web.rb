#
# Cookbook Name:: dam-config
# Recipe:: default
#
# Copyright 2014, Takayuki Sakai
#
# All rights reserved - Do Not Redistribute
#

%w{httpd}.each do |pkg|
    package pkg do
        action :install
    end
end

template "dam-config" do
    path "/etc/httpd/conf.d/dam-httpd.local.conf"
    source "dam-config.erb"
    owner "apache"
    group "apache"
    mode "0644"
end

template "httpd.conf" do
    path "/etc/httpd/conf/httpd.conf"
    source "httpd.conf.erb"
    owner "apache"
    group "apache"
    mode "0644"
end

directory "/var/log/dam" do
    owner "apache"
    group "apache"
    mode "0755"
    action :create
end

service "iptables" do
    action [:disable, :stop]
end

service 'httpd' do
    action [:enable, :start]
end

