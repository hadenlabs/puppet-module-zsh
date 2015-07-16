# == Class zsh::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class zsh::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'zsh',
    }
    'RedHat', 'Amazon': {
      $package_name = 'zsh',
      $package_dependences = "epel-release"
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
