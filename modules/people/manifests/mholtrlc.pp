class people::mholtrlc {
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::tap_to_click
  include osx::dock::dim_hidden_apps
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::enable_quicklook_text_selection
  include iterm2::dev
  include caffeine
  include osxfuse
  
  #include atom

  package{ 'zsh': }
  package{ 'htop-osx': }
  package{ 'tree': }
  package{ 'graphviz': }

  package { 'Pacifist':
    source   => 'http://www.charlessoft.com/pacifist_download/Pacifist_3.5.4.dmg',
    provider => appdmg,
  }

  package { 'MunkiAdmin':
      provider => 'appdmg',
      source   => 'https://github.com/hjuutilainen/munkiadmin/releases/download/v1.2.1/MunkiAdmin-1.2.1.dmg',
  }

  package { 'Kaleidoscope':
    source      => 'http://cdn.kaleidoscopeapp.com/releases/Kaleidoscope-2.0.1-114.zip',
    provider    => compressed_app,
  }

  package { 'Atom':
    provider => compressed_app,
    source   => 'https://s3.amazonaws.com/github-cloud/releases/3228505/d0649c96-3c42-11e5-87d9-befb7f868752.zip?response-content-disposition=attachment%3B%20filename%3Datom-mac.zip&response-content-type=application/octet-stream&AWSAccessKeyId=AKIAISTNZFOVBIJMK3TQ&Expires=1438986860&Signature=KBc1FEyZLP8WBssJZbO%2F1reo%2BN8%3D',
  }



  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }


}
