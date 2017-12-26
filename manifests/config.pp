# Class: clamav::config
#
#
class clamav::config {
  file { '/etc/clamav/freshclam.conf':
    ensure => 'file',
    owner  => 'clamav',
    group  => 'adm',
    mode   => '0444',
    source => template("clamav/freshclam.conf.erb"),
  }
}
