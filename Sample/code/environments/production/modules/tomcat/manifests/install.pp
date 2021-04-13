class tomcat::install inherits tomcat::params { 
    package { $::tomcat::packages: 
        ensure => installed,
    }
}
