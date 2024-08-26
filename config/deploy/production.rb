# EC2サーバーのIP、EC2サーバーにログインするユーザー名、サーバーのロールを記述
server '54.199.7.47', user: 'ec2-user', roles: %w[app db web]

# デプロイするサーバーにsshログインする鍵の情報を記述
set :ssh_options, keys: '/Users/kentaro/.ssh/id_ed25519'
# set :ssh_options, {
#   keys: %w(/Users/kentaro/.ssh/deploy_key.pem),
#   forward_agent: true,
#   auth_methods: %w(publickey)
# }





