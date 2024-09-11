# /Users/kentaro/environment/rails_study/study_app/toy_app/config/unicorn/unicorn.rb

# Set the working application directory
working_directory "/projects/toy_app/current"

# Unicorn PID file location
pid "/projects/toy_app/current/tmp/pids/unicorn.pid"

# # 追加
# listen "/var/run/unicorn.sock"
# pid "/var/run/unicorn.pid"

# Path to logs
# この設定は、unicornのログをどこに出力するかを指定しています。
stderr_path "/projects/toy_app/shared/log/unicorn.stderr.log"
stdout_path "/projects/toy_app/shared/log/unicorn.stdout.log"

# # Unicorn socket
# listen "/projects/toy_app/current/tmp/sockets/unicorn.sock"

# Number of processes
worker_processes 2

# Time-out
timeout 30
