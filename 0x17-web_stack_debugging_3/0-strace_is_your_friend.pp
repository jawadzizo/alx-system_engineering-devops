# internal_error_fix
exec { 'internal_error_fix':
  command  => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  provider => shell
}
