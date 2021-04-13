class tomcat::config inherits tomcat::params{

    file { $::tomcat::config_path :
        source  => 'puppet:///modules/tomcat/server.xml',
        mode    => '0644',
        owner   => $::tomcat::user,
        group   => $::tomcat::group,
        notify  => Service[$::tomcat::service_name],
    }
    file { $::tomcat::tomcat_config :        
        content => template('tomcat/tomcat.conf.erb'),
        mode    => '0644',
        owner   => $::tomcat::user,
        group   => $::tomcat::group,
        notify  => Service[$::tomcat::service_name],
    }    
}