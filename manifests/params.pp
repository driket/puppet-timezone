# configuer le produit ici
class mv_timezone::params {

	$packages = ["tzdata", "language-pack-fr"]
	$service_name = "tzdata"
	$timezone_config_path = "/etc/timezone"
	$language_config_path = "/etc/environment"
}

