source 'https://rubygems.org'

gem 'rails',         '~> 5.2.8', '>= 5.2.8.1'
gem 'puma',         '3.9.1'
gem 'sass-rails',   '5.0.6'
gem 'uglifier',     '3.2.0'
gem 'coffee-rails', '4.2.2'
gem 'jquery-rails', '4.3.1'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.7.0'
gem 'ed25519'
gem 'bcrypt_pbkdf'
gem 'sqlite3', '~> 1.4'

group :development, :test do
  gem 'byebug',  '9.0.6', platform: :mri
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
end

group :development do
  gem 'web-console',           '3.5.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
  #  rails generate scaffold User name:string email:stringを追加すると下記のエラーが生じされたため以下のgemを追加
  # gem 'bootsnap', '>= 1.4.2'
end


# groupは、--without productionオプションを付けてbundle installするときに、このグループに含まれるgemをインストールしないようにするためのものです。
# group :production do
#   gem 'pg', '0.20.0'
# end

group :production, :staging do
  gem 'unicorn', '~> 5.4.1'
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
