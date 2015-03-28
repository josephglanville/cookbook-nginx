default['nginx']['user'] = 'www-data'
default['nginx']['worker_processes'] = 4
default['nginx']['pid'] = '/run/nginx.pid'

default['nginx']['events']['worker_connections'] = 768
default['nginx']['events']['multi_accept'] = 'on'

default['nginx']['http']['sendfile'] = 'on'
default['nginx']['http']['tcp_nopush'] = 'on'
default['nginx']['http']['tcp_nodelay'] = 'on'
default['nginx']['http']['keepalive_timeout'] = 65

default['nginx']['http']['log_dir'] = '/var/log/nginx'

default['nginx']['http']['gzip'] = 'on'
default['nginx']['http']['gzip_disable'] = 'msie6'

default['nginx']['http']['includes'] = %w(
  /etc/nginx/conf.d/*.conf
  /etc/nginx/sites-enabled/*
)
