# Class: clamav::config
#
#
class clamav::config (
  Array[String] $databasecustom = $clamav::databasecustom,
) {
  file {"/etc/clamav/freshclam.conf":
    ensure => 'file',
    owner  => 'clamav',
    group  => 'adm',
    mode   => '0444',
    source => template('clamav/freshclam.conf.erb'),
  }
}
