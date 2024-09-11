# /Users/kentaro/environment/rails_study/study_app/toy_app/config/unicorn/unicorn.rb

# Set the working application directory
working_directory "/projects/toy_app/current"

# Unicorn PID file location
pid "/projects/toy_app/current/tmp/pids/unicorn.pid"

# Path to logs
stderr_path "/projects/toy_app/current/log/unicorn.stderr.log"
stdout_path "/projects/toy_app/current/log/unicorn.stdout.log"

# Unicorn socket
listen "/projects/toy_app/current/tmp/sockets/unicorn.sock"

# Number of processes
worker_processes 2

# Time-out
timeout 30
