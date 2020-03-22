class jbossdep::jbosstart {
file { '/usr/local/bin/jbossstart.sh':
ensure => present,
mode   => 0755,
owner   => root,
group   => root,
content => template('jbossdep/jbossstartup.sh.erb')
} ->
exec {'jboss start':
command => 'runuser -l mradmin -c /usr/local/bin/jbossstart.sh',
path   => ['/sbin','/bin','/usr/bin','/usr/local/bin']
}

}
