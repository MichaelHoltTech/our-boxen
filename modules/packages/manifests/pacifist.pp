class packages::pacifist (
  $source = undef,
) {
  if $source {
    $url = $source
  }
  else {
    $url = "http://www.charlessoft.com/pacifist_download/Pacifist_3.5.4.dmg"
  }

  package { "pacifist-3.5.4":
    ensure   => 'installed',
    source   => $url,
    provider => 'appdmg',
  }
}