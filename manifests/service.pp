# Class: clamav::service
#
#
class clamav::service {
  service { 'clamav-freshclam':
    ensure    => 'running',
    name      => 'clamav-freshclam',
    enable    => true,
    hasstatus => true,
    hasrestart => true,
  }
  service { 'clamav-daemon':
    ensure    => 'running',
    name      => 'clamav-daemon',
    enable    => true,
    hasstatus => true,
    hasrestart => true,
  }
}
