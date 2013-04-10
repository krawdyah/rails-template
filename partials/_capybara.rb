puts "Adding capybara helpers...".magenta

copy_static_file 'spec/minitest_helper.rb'
copy_static_file 'spec/support/acceptance_helpers.rb'
copy_static_file 'spec/support/acceptance_macros.rb'
copy_static_file 'spec/support/capybara.rb'
copy_static_file 'spec/support/shared_connection.rb'

git :add => '.'
git :commit => "-aqm 'Add capybara helpers.'"
puts "\n"