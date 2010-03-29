#
# Cookbook Name:: nginx_redirects
# Recipe:: default
#

if ['solo', 'app', 'app_master'].include?(node[:instance_role])
  remote_file "/data/nginx/servers/protopipe.rewrites" do
      owner "deploy"
      group "deploy"
      mode 0644
      source "nginx.rewrites"
      action :create
  end
end
