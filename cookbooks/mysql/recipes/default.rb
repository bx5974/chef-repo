#
# Cookbook:: mysql
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
#
#

puts node[:mysql][:port]

puts node[:mysql][:username]

template '/tmp/message' do                                                                     
	  source 'message.erb'                                                                         
	    variables(                                                                                   
		          hi: 'Hola',                                                                                
			      world: 'Welt',                                                                             
			          port: node[:mysql][:port]                                                                         
				    )                                                                                            
end
