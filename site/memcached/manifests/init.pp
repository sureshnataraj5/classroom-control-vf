class memcached{
  package { 'memcached':
      ensure => present,
  }

  file { '/etc/sysconfig/memcached':
    ensure => file,
    owner => root,
    group => root,
    source => 'puppet:///modules/memcached/memcached.cfg',
    require => Package['memcached'],
  }

  service { 'memcached':
    ensure => running,
    enable => true,
    subscribe => File['/etc/sysconfig/memcached']
  }
}
