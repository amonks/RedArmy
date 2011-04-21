namespace :db do
  desc "Add user 1 to database"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "Andrew Monks", :email => "ajm@andrewmonks.net", :password => "15985210", :password_confirmation => "15985210")
    admin.toggle!(:admin)
  end
end