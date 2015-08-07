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
  
  include atom

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



  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }


}
