class yumupdate::update {

    file{ '/etc/yum.repos.d/CentOS-Base.repo':
        source => 'puppet:///modules/yumupdate/CentOS-Base.repo',
        owner => 'root',
        group => 'root',
    }
    exec { yumupd:
        path => ['/usr/bin', '/bin'],
        command => 'date >> /tmp/updatetest; yum update -y >> /tmp/updatetest',
        subscribe => File['/etc/yum.repos.d/CentOS-Base.repo'],
        refreshonly => true,

    }
}