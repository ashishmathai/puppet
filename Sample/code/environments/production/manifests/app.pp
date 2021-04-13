node 'node1' {
    class {'::tomcat':
        xmin    => '0.1',
        xmax    => '0.2',
        user    => 'root',
        group   => 'tomcat',
        service_state => 'running',
    }
    #include yumupdate
    include base
}

node 'node2' {
    class {'::tomcat':
        xmin    => '0.1',
        xmax    => '0.2',
        user    => 'root',
        group   => 'tomcat',
        service_state => 'running',
    }
    #include yumupdate
    include base
}
