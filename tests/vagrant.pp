node default {
  include ::yum

  case $::osfamily {
    'RedHat': {
      yum::config { 'exclude':
        value => 'kernel*'
      }
    }
    default: { }
  }
}