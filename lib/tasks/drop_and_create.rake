namespace :d do
  desc "redrop"
  task :redo => :environment do
    rake db:drop
    rake db:create
    rake db:migrate
    rake db:seed
  end
end