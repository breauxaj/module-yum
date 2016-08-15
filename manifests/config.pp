define yum::config (
  $value
) {
  include ::yum

  $key = $title

  $context = '/files/etc/yum.conf/main'

  augeas { "yum_conf/${key}":
    context => $context,
    onlyif  => "get ${key} != '${value}'",
    changes => "set ${key} '${value}'",
  }

}