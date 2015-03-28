include_recipe 'nginx::service'

link '/etc/nginx/sites-enabled/default' do
  to '/etc/nginx/sites-available/default'
  action :delete
  notifies :reload, 'service[nginx]'
end

template '/etc/nginx/nginx.conf' do
  variables conf: node['nginx']
  notifies :reload, 'service[nginx]'
end

template '/etc/logrotate.d/nginx' do
  source 'nginx.logrotate.erb'
end
