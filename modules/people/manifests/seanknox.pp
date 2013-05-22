class people::seanknox {

  include people::seanknox::dotfiles
  include people::seanknox::applications
  include people::seanknox::config

  $home     = "/Users/${::luser}"
  $dotfiles = "${home}/dotfiles"

  repository { $dotfiles:
    source  => 'seanknox/dotfiles'
  }
  repository { "/Users/${::boxen_user}/.zprezto":
    source  => 'sorin-ionescu/prezto'
  }

}

