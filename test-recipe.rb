#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

#--sample-recipe.rb
file '/myfile3' do
  content "This is to get attributes"
  action :create
end

execute "run a script" do
  command <<-EOH
  mkdir /MyDir
  touch /Myfile
  EOH
end

user "chef" do
  action :create
end

group "DevOps" do
  action :create
  members 'chef'
  append true
end
