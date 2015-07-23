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
  code <<CODE
monit reload
sleep 1
monit status
sleep 10
monit -g sneakers_worker restart
CODE
end
