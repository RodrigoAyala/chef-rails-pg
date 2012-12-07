#
# Cookbook Name:: main
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
postgresql_connection_info = {:host => "localhost", :username => 'postgres', :password => node['postgresql']['password']['postgres']}

database_user node['postgresql']['user']['username'] do
  connection postgresql_connection_info
  password node['postgresql']['user']['password']
  provider Chef::Provider::Database::PostgresqlUser
  action :create
end
