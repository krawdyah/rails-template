puts "Adding default files ...".magenta

copy_static_file 'app/assets/stylesheets/reset.css'

%w{requires.rb}.each do |component|
  copy_static_file "config/initializers/#{component}"
end

copy_static_file 'config/locales/pt-BR.yml'
copy_static_file 'public/index.html' if ENV['RAILS_TEMPLATE_TEST'] == 'true'

copy_static_file '.gitignore'

git :add => '.'
git :commit => "-aqm 'Add default stuff.'"
puts "\n"
