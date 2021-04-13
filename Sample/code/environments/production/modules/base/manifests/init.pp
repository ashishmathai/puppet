class base inherits base::params {
user {'deploy':
    ensure      => present,
    uid         => '5001',
    password    => '$1$Sz5JLO8v$1EtUyMnE071qkjiyf2qrt/',
    home        => '/home/deploy',
}

package { ['tree','wget','unzip','ntp']:}

user {'dojo':
    ensure      => absent,
}

file { '/etc/motd':
    owner       => 'root',
    group       => 'root',
    mode        => '0644',
    content     => "
        This Server is a property of XYZ Inc.
        SYSTEM INFO
        -----------
         Hostname     : ${::fqdn}
         IP Address   : ${::ipaddress}
         Memory       : ${::memory[system][total]}
         Cores        : ${::processors[count]}
         OS           : ${::os[distro][description]}
    ",
}

service {$::base::ntp_service:
    ensure      => running,
    enable      => true,

}
}