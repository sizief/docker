# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

desc "run services"
task :up  do
  sh "rm -f tmp/pids/server.pid"
  sh "docker-compose up"
end

desc "build services"
task :build  do
  sh "docker-compose build"
end

desc "build services"
task :restart  do
  sh "docker-compose down"
  sh "rake up"
end
