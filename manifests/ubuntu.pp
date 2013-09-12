class fprint::ubuntu {

  ::apt::ppa {'ppa:fingerprint/fprint': }

  package { ['libpam-fprintd', 'fprintd']:
    ensure  => present,
  }

}
