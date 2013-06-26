class people::seanknox::applications {

  include tmux
  include iterm2::stable
  include chrome
  include chrome::canary
  include dropbox
  include kindle
  include macvim
  include gitx::dev
  include python
  include mysql
  include flux
  include alfred
  include skype
  include transmission
  include zsh
  include onepassword
  /* include vim */

  mysql::db { 'mydb': }

  include ruby::1_9_3
  include ruby::2_0_0

  /*ruby::gem { "rails for 1.9.3":*/
  /*  gem     => 'rails',*/
  /*  ruby    => '1.9.3',*/
  /*  version => '~> 3.2.13'*/
  /*}*/
  /*ruby::gem { "rails for 2.0.0":*/
  /*  gem     => 'rails',*/
  /*  ruby    => '2.0.0',*/
  /*  version => '~> 3.2.13'*/
  /*}*/
  /*exec { "rails for 2.0.0":*/
  /*  command => 'gem install -f rails -v 3.2.13'*/
  /*}*/
  /*ruby::gem { "pry for 1.9.3":*/
  /*  gem     => 'pry',*/
  /*  ruby    => '1.9.3',*/
  /*  version => '~> 0.9.12.2'*/
  /*}*/
  /*ruby::gem { "pry for 2.0.0":*/
  /*  gem     => 'pry',*/
  /*  ruby    => '2.0.0',*/
  /*  version => '~> 0.9.12.2'*/
  /*}*/
}

