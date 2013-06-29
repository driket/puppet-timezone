define mv_timezone::tools::set_timezone($config_file = $mv_timezone::params::config_path, $timezone = "Etc/UTC") {
	
	require('mv_timezone')
	require('mv_timezone::packages')
	
	file { "${config_file}":
		ensure => file,
        #content => template("mv_timezone/timezone.erb"),
		content => "$timezone\n",
        mode 	=> "0644",
        owner 	=> 'root',
        group 	=> 'root',
		require => Package['mv_timezone'],
		notify => Exec['mv_timezone_setup'],
	}
	
	exec { "mv_timezone_setup":
		command => "/usr/sbin/dpkg-reconfigure -f noninteractive tzdata",
		refreshonly => true,
	}
}
