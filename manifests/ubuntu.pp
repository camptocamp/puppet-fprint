class fprint::ubuntu {
  ::apt::ppa { 'fingerprint':
    ensure => present,
    key    => '2F20733F',
    ppa    => 'fprint',
  }

  package { ['libpam-fprintd', 'fprintd']:
    ensure  => present,
    require => Apt::Ppa['fingerprint'],
  }
}
