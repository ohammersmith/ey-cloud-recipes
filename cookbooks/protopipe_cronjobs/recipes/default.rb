#
# Cookbook Name:: protopipe_cronjobs
# Recipe:: default
#

# Cron jobs on just primary app nodes
if ['solo', 'app_master'].include?(node[:instance_role])
  cron "invites" do
    minute  '47'
    hour '4'
    command "(cd /data/protopipe/current ; rake invitations:send_to_all_matching_job_seekers RAILS_ENV=#{node[:environment][:framework_env]} )"
    user "deploy"
  end
end

# Cron jobs on all app nodes
if ['solo', 'app_master', 'app'].include?(node[:instance_role])
  # Somehow this cron job is already automated, but I can't for the life of me figure out where it is, commenting for now. -OJH
  # cron "indexing" do
  #   minute  '47'
  #   hour '0'
  #   command "(cd /data/protopipe/current ; rake ts:in RAILS_ENV=#{node[:environment][:framework_env]})"
  #   user "deploy"
  # end
end
