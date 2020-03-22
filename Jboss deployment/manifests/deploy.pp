class jbossdep::deploy {
file {"/usr/local/bin/jbossdeploy":
ensure => present,
mode => 0755,
owner => 'root',
group => 'root',
content => template('jbossdep/deploy.sh.erb')
}
}

