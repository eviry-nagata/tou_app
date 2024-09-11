# # このファイルはデプロイ時に行われるタスクを設定
# lock '~> 3.11.0'

# set :application, 'new_app'
# set :repo_url, 'git@github.com:eviry-nagata/study_app.git'

# set :deploy_to, '/projects/new_app'

# # デプロイを行う際に使用するサーバー上のユーザーを指定
# set :user, 'kentaro'

# # 特定のサブディレクトリ（ここではcore）をデプロイ対象とすることを指定
# # -> 今回は全てのディレクトリをデプロイするためコメントアウト
# #set :repo_tree, 'core'

# # デプロイ時にサーバー間で共有するディレクトリを指定するために使用
# append :linked_dirs,
#        'log',
#        '.bundle',
#        'tmp/pids',
#        'tmp/cache',
#        'tmp/sockets',
#        'tmp/task_pids',
#        'tmp/true_view',
#        'public/system'


# # secret_base_keyを読み込ませるため追記
# set :linked_files, %w[config/master.key]

# set :ssh_options,
#     user: 'kentaro',
#     keys: [File.expand_path('~/.ssh/deploy_key')],
#     # ホストマシンのssh-agentをログイン先のマシンからも参照できるsshの機能
#     forward_agent: false,
#     auth_methods: %w[publickey]

# # デプロイ時に環境変数を設定するために使用（これは必要なのか？）
# namespace :deploy do
#   Rake::Task['deploy:check:directories'].clear
#   Rake::Task['deploy:check:linked_dirs'].clear

# # シンボリックリンクをはるファイル。
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/settings.yml', '.env')

# # シンボリックリンクをはるフォルダ。
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# # 保持するバージョンの個数。過去５つまで履歴を保存。
# set :keep_releases, 5

# set :rbenv_ruby, '2.5.3'

# # 出力するログのレベル。
# set :log_level, :debug

# namespace :deploy do
#     desc 'Restart application'
#     task :restart do
#       invoke 'unicorn:restart'
#     end
  
#     # desc 'Create database'
#     # task :db_create do
#     #   on roles(:db) do |_host|
#     #     with rails_env: fetch(:rails_env) do
#     #       within current_path do
#     #         execute :bundle, :exec, :rake, 'db:create'
#     #       end
#     #     end
#     #   end
#     # end
  
#     # seedは必要なし
#     # desc 'Run seed'
#     # task :seed do
#     #   on roles(:app) do
#     #     with rails_env: fetch(:rails_env) do
#     #       within current_path do
#     #         execute :bundle, :exec, :rake, 'db:seed'
#     #       end
#     #     end
#     #   end
#     # end
  
#     after :publishing, :restart
  
#     after :restart, :clear_cache do
#       on roles(:web), in: :groups, limit: 3, wait: 10 do
#       end
#     end
#   end
# end

# deploy.rbはcapistranoの設定ファイルです。このファイルにはデプロイ時に行われるタスクを設定します。
# capistranoのバージョン固定
lock '~> 3.19.1'

# デプロイするアプリケーション名
set :application, 'toy_app'

# cloneするgitのレポジトリ
set :repo_url, 'git@github.com:eviry-nagata/tou_app.git'

# deployするブランチ。デフォルトはmasterなのでなくても可。
set :branch, 'main'

# deploy先のディレクトリ。
set :deploy_to, '/projects/toy_app'

# secret_base_keyを読み込ませるため追記
set :linked_files, %w[config/master.key]

# シンボリックリンクをはるファイル。
# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/settings.yml', '.env')
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/settings.yml')

# set :linked_files, fetch(:linked_files, []).push('config/settings.yml')


# シンボリックリンクをはるフォルダ。
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
# set :linked_dirs, fetch(:linked_dirs, []).push('log')

# 保持するバージョンの個数。過去５つまで履歴を保存。
set :keep_releases, 5

# rubyのバージョン
set :rbenv_ruby, '2.5.3'

# 出力するログのレベル。
set :log_level, :debug

set :rbenv_type, :system # または :user
# set :rbenv_prefix, "RBENV_ROOT=/usr/local/rbenv RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
# set :rbenv_roles, :all # default value



namespace :deploy do
  Rake::Task["deploy:migrate"].clear_actions
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
    end
  end
end

