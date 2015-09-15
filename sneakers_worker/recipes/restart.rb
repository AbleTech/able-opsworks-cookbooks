#
# Cookbook Name:: sneakers_worker
# Recipe:: restart
#
# Copyright 2013, FreeRunning Technologies
#
# All rights reserved - Do Not Redistribute
#

bash "restart-all-sneakers_worker" do
  user 'root'
  retries 20
  retry_delay 20
  code <<CODE
monit -g sneakers_worker restart
CODE
end
