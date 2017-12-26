# Class: clamav::config
#
#
class clamav::config {
  file { '/etc/clamav/freshclam.conf':
    ensure => 'present',
    owner  => 'clamav',
    group  => 'adm',
    mode   => '0444',
    source => templates("clamav/freshclam.conf.erb"),
  }
}
