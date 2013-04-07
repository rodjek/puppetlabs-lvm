define lvm::volume_group(
    $physical_volumes,
    $ensure = 'present',
  ) {

  include lvm

  volume_group { $name:
    ensure           => $ensure,
    physical_volumes => $physical_volumes,
    require          => Class['lvm'],
  }
}
