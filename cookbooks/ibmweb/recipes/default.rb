#
# Cookbook:: ibmweb
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
puts node[:postgresql][:port] 

#puts Chef::EncryptedDataBagItem.load('credentials','aws','aws_secret')

package "apache2" do
	  action :install
end
service "apache2" do
	  action [:enable, :start]
end


