# Class: clamav
# ===========================
class clamav (
  Array[String] $databasecustom = $clamav::config::databasecustom,
) {
  class { '::clamav::install': } ->
  class { '::clamav::config': } ~>
  class { '::clamav::service': }
}
