class mv_timezone::service {

	#service { "mv_timezone":
	#	name => $mv_timezone::service_name,
	#	ensure => running,
	#	require => Package["mv_timezone"],
	#}
}

