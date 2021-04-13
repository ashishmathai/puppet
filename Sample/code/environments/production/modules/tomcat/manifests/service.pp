class tomcat::service inherits tomcat::params { 
    service {$::tomcat::service_name :
        ensure => $::tomcat::service_state,
        enable => true,
    }
}