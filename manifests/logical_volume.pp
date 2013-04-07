define lvm::logical_volume(
    $volume_group,
    $size = undef,
  ) {

  include lvm

  logical_volume { $name:
    volume_group => $volume_group,
    size         => $size,
    require      => Class['lvm'],
  }
}
