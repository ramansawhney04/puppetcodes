package {'apache2':
ensure => present,
}
->
service {'apache2':
ensure => running,
}
exec {'apt-get update':
path => '/usr/bin',
before => Package['apache2'],
}
package {'mysql-server':
ensure => present,
require => Service['apache2'],
}
->
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
package {'php5-mysql':
ensure => present,
require => Service['mysql'], 
}
package {'libapache2-mod-php5':
ensure => present,
}
package {'php5-mcrypt':
ensure => present,
}
package {'php5-gd':
ensure => present,
}
package {'libssh2-php':
ensure => present,
}
exec {'mysqladmin -u root password 123@India && touch /var/flagmysqlroot':
path => '/usr/bin',
creates => '/var/flagmysqlroot',
}


