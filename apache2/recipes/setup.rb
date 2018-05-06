#
# Cookbook:: apache2
# Recipe:: setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.


package 'apache2'
package 'vim'
file '/var/www/html/index.html' do
	content "<h1>Welcome to chef client"
end
service 'apache2'do
	action [:enable,:start]
end
