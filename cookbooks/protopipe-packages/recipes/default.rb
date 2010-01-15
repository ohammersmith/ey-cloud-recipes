#
# Cookbook Name:: protopipe-packages
# Recipe:: default
#

package "dev-libs/libxml2" do
  action :install
end

package "dev-libs/libxslt" do
  action :install
end

package "media-libs/freeimage" do
  action :install
end

package "net-misc/curl" do
  action :install
end