class jbossdep {
include jbossdep::deploy
file {'/tmp/jbossdep':
ensure => directory,
owner  => 'mradmin',
group  => 'mradmin',
mode   => 0777,
source => 'puppet:///modules/jbossdep',
recurse => true,
purge   => true
} ->
class{'jbossdep::rundep': }
# -> class {'jbossdep::jbosstop': } -> class {'jbossdep::jbosstart': }
}
