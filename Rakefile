require 'active_record'
require 'yaml'

namespace :db do
  task :migrate do
    conf = YAML.load_file('database.yml')
    ActiveRecord::Base.establish_connection(conf['db']['test'])
    ActiveRecord::Migrator.migrate('migrate')
  end
end
