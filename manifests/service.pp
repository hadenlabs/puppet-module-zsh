# == Class zsh::service
#
# This class is meant to be called from module.
# It ensure the service is running.
#
class zsh::service {

  service { $::zsh::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
