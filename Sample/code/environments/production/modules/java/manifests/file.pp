class java::rmoldrepo {
    exec { 'removeold_repo':        
        command => 'rm -rf /etc/yum.repos.d/CentOS-Base.repo'
    }
}

class java::filecopy {
    file { '/etc/yum.repos.d':
        ensure  => directory,
    }

    file { '/etc/yum.repos.d/CentOS-Base.repo':
        mode    => 0644,
        owner   => 'root',
        group   => 'root',
        source  => 'puppet:///modules/java/CentOS-Base.repo',
    }
    exec { 'yumupd':
        command => 'yum update -y'
    }
}