# Load modules and classes
lookup('classes', {merge => unique}).include

class {'docker':
  ensure  => 'present',
  docker_users => ['vagrant'],
}

class {'docker::compose':
  ensure  => 'present',
}


# Open ports for webserver
exec { 'open port 80':
  command => 'iptables -A INPUT -p tcp --dport 80 -j ACCEPT',
  path => ['/usr/local/bin','/usr/bin', '/bin', '/usr/sbin'],
  user => 'root',
} ->
exec { 'open port 443':
  command => 'iptables -A INPUT -p tcp --dport 443 -j ACCEPT',
  path => ['/usr/local/bin','/usr/bin', '/bin', '/usr/sbin'],
  user => 'root',
} ->
exec { 'save port changes':
  command => 'iptables-save --file /etc/iptables/rules.v4',
  path => ['/usr/local/bin','/usr/bin', '/bin', '/usr/sbin'],
  user => 'root',
}
