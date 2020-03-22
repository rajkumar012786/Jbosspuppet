class jbossdep::jbosstop {
file {'/usr/local/bin/jbosstop.sh':
ensure => present,
mode   => 0755,
content => template('jbossdep/jbossstop.sh.erb'),
} ->
exec {'stop jboss':
command => '/usr/local/bin/jbosstop.sh',
path   => ['/usr/local/bin']
}
}
