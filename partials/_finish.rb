in_root do
  run "rake db:create"
  run "rails g devise:install"
  run "rails g devise User"
  run "rails g devise:views"
  run "rake db:migrate"
end

git :add => 'db/schema.rb'
git :commit => "-qm 'Create database, adding db/schema.rb.'"

puts "\n"
