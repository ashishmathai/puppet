class tomcat::params{
    $user           = 'tomcat'
    $group          = 'tomcat'
    $config_path    = '/etc/tomcat/server.xml'
    $tomcat_config  = '/etc/tomcat/tomcat.conf'
    $packages       = ['tomcat', 'tomcat-webapps']
    $service_name   = 'tomcat'
    $service_state  = 'running'
    $shutdown_wait  = '30'
    $tomcat_user    = 'tomcat'
    $catalina_pid   = '/var/run/tomcat.pid'
    $shutdown_verbose  = 'false'
    $security_manager  = 'fasle'
    $catalina_tmp_dir  = '/var/cache/tomcat/temp'
    $jasper_home       = '/usr/share/tomcat'
    $catalina_home     = '/usr/share/tomcat'
    $catalina_base     = '/usr/share/tomcat'
    $java_home         = '/usr/lib/jvm/jre'
    $tomcat_cfg_loaded = '1'
    $xmin              = '0.1'
    $xmax              = '0.3'
}