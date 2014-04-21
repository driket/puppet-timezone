class mv_timezone::packages {
	require('mv_timezone::params')

	package {["tzdata", "language-pack-fr"]:
		ensure => present,
	}

}

