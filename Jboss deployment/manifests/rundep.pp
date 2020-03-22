class jbossdep::rundep {
exec {'change the  directory permission':
command => 'chown -R mradmin.mradmin /app/* ',
path   => ['/bin','/usr/bin/','/usr/local/bin/','/sbin/']
} ->

exec {'run the jboss deployment script':
command => 'runuser -l mradmin -c /usr/local/bin/jbossdeploy',
#refreshonly => true,
path   => ['/bin','/usr/bin/','/usr/local/bin/','/sbin/'],
require => Class['jbossdep::deploy']
}
}
