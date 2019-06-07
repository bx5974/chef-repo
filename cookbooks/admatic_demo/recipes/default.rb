#
# Cookbook:: admatic_demo
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
hook = data_bag_item('hooks', 'request_bin')
puts hook['url']

file "#{ENV['HOME']}/hello_admatic.txt" do
  content 'Hello This text file was created by Chef!'
  end
