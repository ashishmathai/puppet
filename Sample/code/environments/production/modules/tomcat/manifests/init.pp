class tomcat(
    $user               = $tomcat::params::user,
    $group              = $tomcat::params::group,
    $config_path        = $tomcat::params::config_path,
    $tomcat_config      = $tomcat::params::tomcat_config,
    $packages           = $tomcat::params::packages,
    $service_name       = $tomcat::params::service_name,
    $service_state      = $tomcat::params::service_state,
    $shutdown_wait      = $tomcat::params::shutdown_wait,
    $tomcat_user        = $tomcat::params::tomcat_user,
    $catalina_pid       = $tomcat::params::catalina_pid,
    $shutdown_verbose   = $tomcat::params::shutdown_verbose,
    $security_manager   = $tomcat::params::security_manager,
    $catalina_tmp_dir   = $tomcat::params::catalina_tmp_dir,
    $jasper_home        = $tomcat::params::jasper_home,
    $catalina_home      = $tomcat::params::catalina_home,
    $catalina_base      = $tomcat::params::catalina_base,
    $java_home          = $tomcat::params::java_home,
    $tomcat_cfg_loaded  = $tomcat::params::tomcat_cfg_loaded,
    $xmin               = $tomcat::params::xmin,
    $xmax               = $tomcat::params::xmax ,
) inherits tomcat::params {
    notify { "Init tomcat":}
    include java::install
    include tomcat::install
    include tomcat::config
    include tomcat::service

}
