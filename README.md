# My Boxen

This is a template Boxen project forked from Github's Boxen project. 
The Boxen rubygem and the Boxen puppet modules are only a framework for getting
things done.


## What You Get

You should check out the full Boxen documentation at https://github.com/boxen/our-boxen. 

This template project provides the following by default:

* Homebrew
* Git
* Hub
* dnsmasq w/ .dev resolver for localhost
* rbenv
* Full Disk Encryption requirement
* Node.js 0.4
* Node.js 0.6
* Node.js 0.8
* Ruby 1.8.7
* Ruby 1.9.2
* Ruby 1.9.3
* Ruby 2.0.0
* ack
* Findutils
* GNU tar
* Dropbox
* Postgresapp
* Hipchat
* Heroku tools

In addition, my user (seanknox) is set to install all of my dotfiles, additional applications, and OS X configuration.
Check out `modules/people/manifests/seanknox/` to see more.


If you're using a Github Enterprise instance rather than github.com,
you will need to set the "BOXEN_GITHUB_ENTERPRISE_URL" and
"BOXEN_REPO_URL_TEMPLATE" variables in your
[Boxen config](config/boxen.rb).

## Halp!

See [FAQ](https://github.com/boxen/our-boxen/blob/master/docs/faq.md).

Use Issues or #boxen on irc.freenode.net.
