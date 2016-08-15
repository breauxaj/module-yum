# Class: yum
#
# This class manages yum
#
# Parameters:
#
#  ensure: (default latest)
#    Determine the state of the packages
#
# Actions:
#   - Manages yum repositories
#
# Requires:
#
# Sample Usage:
#
#  For a standard installation, use:
#
#    class { 'yum': }
#
class yum (
  $config = {},
  $gpgkeys = {},
  $repos = {}
) inherits ::yum::params {
  case $::osfamily {
    'RedHat': {
      if $config {
        create_resources('yum::config',$config)
      }

      if $gpgkeys {
        create_resources('yum::gpgkey',$gpgkeys)
      }

      if $repos {
        create_resources('yumrepo',$repos)
      }

    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }

}
