Array(node[:resource_files] && node[:resource_files][:remote_files]).each do |node|
  remote_file node[:name] do
    source node['source']
    owner node['owner']
    group node['group']
    mode '0755'
    action :create
  end
end
