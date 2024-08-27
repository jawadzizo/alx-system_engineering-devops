# remove holberton user from the limits.conf file
exec { 'remove_holberton_user_from_limits_conf':
  command => 'sed -i "s/holberton/non_existing_user/" /etc/security/limits.conf',
  path    => '/bin/:/usr/bin/'
}
