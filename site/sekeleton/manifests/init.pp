Enter file contents here

class skeleton {

File { '/etc/skel':
ensure => file,
source => 'puppet:///modules/sekeleton/bachrc',
}
}
