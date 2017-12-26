# Class: clamav::service
#
#
class clamav::service {
  service { 'clamav-freshclam':
    ensure    => 'present',
    name      => 'clamav-freshclam',
    enable    => true,
    hasstatus => true,
    hasrestart => true,
  }
  service { 'clamav-daemon':
    ensure    => 'present',
    name      => 'clamav-daemon',
    enable    => true,
    hasstatus => true,
    hasrestart => true,
  }
}
