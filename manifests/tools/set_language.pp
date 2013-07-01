define mv_timezone::tools::set_timezone($language_config = $mv_timezone::params::$language_config_path)
	
	require('mv_timezone')
	require('mv_timezone::packages')
	
	#file { "${language_config}":
	#		ensure 	=> file,
	#		content => "$timezone\n",
 	#       mode 		=> "0644",
  #       owner 	=> 'root',
  #       group 	=> 'root',
	#require 	=> Package['mv_timezone'],
	#notify 	=> Exec['mv_timezone_setup'],
	#}
	
	#exec { "mv_lanaguage_setup":
	#	command => "/usr/sbin/dpkg-reconfigure -f noninteractive locales",
		#refreshonly => true,
		#}
}
