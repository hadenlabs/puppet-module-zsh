# == Class: zsh
#
# Full description of class module here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class zsh (
  $package_name = $::zsh::params::package_name
) inherits ::zsh::params {

  # validate parameters here

  class { '::zsh::install': } ->
    Class['::zsh']
}
