package {'apache2':
ensure => present,
}
service {'apache2':
ensure => running,
}
package {'mysql-server':
ensure => present,
}
service {'mysql':
ensure => running,
}
package {'php5':
ensure => present,
}
file {'/var/www/html/info.php':
ensure => present,
content => '<?php  phpinfo(); ?>',
}
