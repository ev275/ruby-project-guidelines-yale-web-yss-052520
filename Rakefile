require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end

# Break here

# task :environment do
#   ENV["Active_RECORD_ENV"] ||= "development"
#   require_relative './config/environment'
# end

# include ActiveRecord::Tasks
# DatabaseTasks.db_dir = 'db'
# DatabaseTasks.migrations_paths = 'db/migrate'
# seed_loader = Class.new do
#   def load_seed
#       load "#{ActiveRecord::Tasks::DatabaseTasks.db_dir}/seeds.rb"
#   end
# end
# DatabaseTasks.seed_loader = seed_loader.new 
# load 'active_record/railties/databases.rake'

# task :console => :environment do
#   Pry.start
# end