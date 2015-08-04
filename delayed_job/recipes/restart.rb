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
  retries 10
  retry_delay 6
  code <<CODE
monit reload
sleep 1
monit -g delayed_job restart
CODE
end
