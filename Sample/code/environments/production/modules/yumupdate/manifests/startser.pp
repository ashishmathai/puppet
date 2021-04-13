class yumupdate::startser { 
    exec { 'yumupd':
        command => 'yum update -y >> /tmp/updatetest'
        subscribe => Package[']
    }
}