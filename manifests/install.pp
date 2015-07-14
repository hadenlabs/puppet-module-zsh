# == Class zsh::install
#
# This class is called from module for install.
#
class zsh::install {

  package { $::zsh::package_name:
    ensure => present,
  }

}
