set :application, "LIK"
set :repository,  "git@github.com:zaqwery/lik.git"

dpath = "/home/hosting_lik-odessa/projects/lik-odessa"

set :user, "hosting_lik-odessa"
set :use_sudo, false
set :deploy_to, dpath

set :scm, :git

role :web, "lithium.locum.ru"                          # Your HTTP server, Apache/etc
role :app, "lithium.locum.ru"                          # This may be the same as your `Web` server
role :db,  "lithium.locum.ru", :primary => true # This is where Rails migrations will run
#after "deploy:update_code", :copy_database_config

#task :copy_database_config, roles => :app do
#  db_config = "#{shared_path}/database.rb"
#  run "cp #{db_config} #{release_path}/config/database.rb"
#end

set :unicorn, "/var/lib/gems/1.8/bin/unicorn"
set :unicorn_conf, "/etc/unicorn/lik-odessa.lik-odessa.rb"
set :unicorn_pid, "/var/run/unicorn/lik-odessa.lik-odessa.pid"

# - for unicorn - #
namespace :deploy do
  desc "Start application"
  task :start, :roles => :app do
    run "#{unicorn} -Dc #{unicorn_conf}"
  end

  desc "Stop application"
  task :stop, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -QUIT `cat #{unicorn_pid}`"
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "[ -f #{unicorn_pid} ] && kill -USR2 `cat #{unicorn_pid}` || #{unicorn} -Dc #{unicorn_conf}"
  end
end
