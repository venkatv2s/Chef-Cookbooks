#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

package 'tree' do
  action :install
end

file '/myfile2' do 
  content 'This is my chef recipe to install Tree software!!!!!'
  action :create
  owner 'root'
  group 'root'
end

%w(httpd git vim unzip mysql).each do |p|
  package p do
    action :install
  end
end

%w(Ramesh Goutham Anil chef1 chef2 chef3 chef4 chef5).each do |p|
  user p do
    action :create
  end
end
