set :application, "LIK"
set :repository,  "git@github.com:zaqwery/lik.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "~/projects/lik-odessa"

role :web, "lik.od.ua"                          # Your HTTP server, Apache/etc
role :app, "lik.od.ua"                          # This may be the same as your `Web` server
role :db,  "lik.od.ua", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

set :user, "hosting_lik-odessa"
set :scm_username, "zaqwery" 
set :use_sudo, false

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
end