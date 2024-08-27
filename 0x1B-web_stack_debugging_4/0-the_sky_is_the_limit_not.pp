# nginx too many requests fix
exec { 'nginx_too_many_requests_fix':
  command => 'sed -i "s/15/1024/" /etc/default/nginx',
  path    => '/bin/: /usr/bin/'
}

exec { 'restart_nginx_server':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
