require "bundler/gem_tasks"

task :default => :bin

desc "Ejecuta Rspec"
task :bin do
   sh "rspec -Ilib spec/b_good_spec.rb"
   sh "rspec -Ilib spec/dsl_spec.rb"
end
