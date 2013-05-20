class people::pairing {

  include people::pairing::applications
  /*include people::pairing::config*/

  $home     = "/Users/${::luser}"
  /*$dotfiles = "${home}/dotfiles"*/

  /*repository { $dotfiles:*/
  /*  source  => 'pairing/dotfiles'*/
  /*}*/

}

