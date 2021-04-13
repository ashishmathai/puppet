node 'node3' {
  include ::haproxy
  haproxy::listen { 'app':
    collect_exported => false,
    ipaddress        => '0.0.0.0',
    ports            => '80',
  }
  haproxy::balancermember { 'node1':
    listening_service => 'app',
    server_names      => 'node1',
    ipaddresses       => '172.18.0.4',
    ports             => '80',
    options           => 'check',
  }
  haproxy::balancermember { 'node2':
    listening_service => 'app',
    server_names      => 'node2',
    ipaddresses       => '172.18.0.5',
    ports             => '80',
    options           => 'check',
  }
}