class mv_timezone::packages {
	require('mv_timezone::params')

	package {"mv_timezone":
		name => $mv_timezone::packages,
		ensure => present,
	}

}

