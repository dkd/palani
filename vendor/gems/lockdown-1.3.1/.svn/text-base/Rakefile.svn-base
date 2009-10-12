# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  load 'tasks/setup.rb'
end

ensure_in_path 'lib'
require 'lockdown'

task :default => 'rcov'

desc "Flog your code for Justice!"
task :flog do
    sh('flog lib/**/*.rb')
end

desc "Run all specs and rcov in a non-sucky way"
Spec::Rake::SpecTask.new(:rcov) do |t|
  t.spec_opts = IO.readlines("spec/spec.opts").map {|l| l.chomp.split " "}.flatten
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.rcov = true
  t.rcov_opts = IO.readlines("spec/rcov.opts").map {|l| l.chomp.split " "}.flatten
end

PROJ.name = 'lockdown'
PROJ.authors = 'Andrew Stone'
PROJ.email = 'andy@stonean.com'
PROJ.url = 'http://stonean.com/wiki/lockdown'
PROJ.version = Lockdown::VERSION
PROJ.rubyforge.name = 'lockdown'

PROJ.spec.opts << '--color'
PROJ.exclude << ".swp"
PROJ.exclude << ".gitignore"

# EOF
