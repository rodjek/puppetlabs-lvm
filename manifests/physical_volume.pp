define lvm::physical_volume($ensure = 'present') {
  include lvm

  physical_volume { $name:
    ensure  => $ensure,
    require => Class['lvm'],
  }
}
