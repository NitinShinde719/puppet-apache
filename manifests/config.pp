# @summary
# Managed Any apache cobfiguration
# 
# A description of what this class does
#
# @example
#   include apache::config
class apache::config {
  file { 'apache_config':
    ensure  => $apache::config_ensure,
    path    => $apache::config_path,
    source  => "puppet:///modules/apache/${osfamily}.conf",
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
}

}
