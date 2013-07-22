class projects::cloudbreak {
  include phantomjs
  include qt
  include imagemagick
  include openssl


  boxen::project { 'cloudbreak':
    dotenv        => false,
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'generalthings/cloudbreak'
  }
}

