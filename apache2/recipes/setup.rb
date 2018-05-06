#
# Cookbook:: apache2
# Recipe:: setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.


package 'apache2'
package 'vim'
template '/var/www/html/index.html' do
	source 'index.html.erb'
end
service 'apache2'do
	action [:enable,:start]
end
