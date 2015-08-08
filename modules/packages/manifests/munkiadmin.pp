class packages::munkiadmin (
  $source = undef,
) {
  if $source {
    $url = $source
  }
  else {
    $url = "https://github.com/hjuutilainen/munkiadmin/releases/download/v1.2.1/MunkiAdmin-1.2.1.dmg"
  }

  package { "munkiadmin-1.2.1":
    ensure   => 'installed',
    source   => $url,
    provider => 'appdmg',
  }
}