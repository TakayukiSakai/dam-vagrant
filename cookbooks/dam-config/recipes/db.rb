#
# Cookbook Name:: dam-config
# Recipe:: default
#
# Copyright 2014, Takayuki Sakai
#
# All rights reserved - Do Not Redistribute
#

db = node['mysql']['database_name']
password = node['mysql']['server_root_password']

%w{mysql-server}.each do |pkg|
    package pkg do
        action :install
    end
end

service 'mysqld' do
    action [:enable, :start]
end

bash "mysql-create-database" do
    code <<-EOC
        echo 'CREATE DATABASE IF NOT EXISTS #{db};' | mysql -uroot #{password.empty? ? '' : '-p' }#{password} --default-character-set=utf8
    EOC
end

bash "mysql-copy-table-structures" do
    code <<-EOC
        mysql -uroot #{password.empty? ? '' : '-p' }#{password} clubdam --default-character-set=utf8 < /vagrant/sql/dump_with_data.sql
    EOC
end

