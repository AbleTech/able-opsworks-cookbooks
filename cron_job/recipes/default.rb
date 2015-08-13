cron "ping_travis_ci" do
  hour "22"
  minute "0"
  command "cd /path_to_app && node ping.js"
end
