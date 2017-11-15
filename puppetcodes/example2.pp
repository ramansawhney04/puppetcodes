file {'/var/www/html/info.php':
ensure => absent,
content => '<?php  phpinfo(); ?>',
}

