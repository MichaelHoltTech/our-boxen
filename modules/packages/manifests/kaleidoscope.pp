class packages::kaleidoscope (
  $source = undef,
) {
  if $source {
    $url = $source
  }
  else {
    $url = "http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-2.0.1-114.zip"
  }

  package { "kaleidoscope-1.2.1":
    ensure   => 'installed',
    source   => $url,
    provider => 'compressed_app',
  }
}