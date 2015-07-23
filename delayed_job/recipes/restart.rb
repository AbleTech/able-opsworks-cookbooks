#
# Cookbook Name:: delayed_job
# Recipe:: restart
#
# Copyright 2013, FreeRunning Technologies
#
# All rights reserved - Do Not Redistribute
#

bash "restart-all-delayed_job" do
  user 'root'
  code <<CODE
monit reload
monit -g delayed_job restart
CODE
end
