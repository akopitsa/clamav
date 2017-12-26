# Class: clamav::install
#
#
class clamav::install {
  package { 'clamav':
    name   => 'clamav',
    ensure => 'present',
  }
  package { 'clamav-daemon':
    ensure  => 'present',
    name    => 'clamav-daemon',
    require => Package['clamav'],
  }
  package { 'clamav-freshclam':
    ensure  => 'present',
    require => Package['clamav-daemon'],
  }
}
