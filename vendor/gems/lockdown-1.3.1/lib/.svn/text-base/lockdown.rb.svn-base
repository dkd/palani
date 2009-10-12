$:.unshift File.dirname(__FILE__)

require File.join("lockdown", "errors")

require File.join("lockdown", "helper")
require File.join("lockdown", "session")
require File.join("lockdown", "context")
require File.join("lockdown", "permission")
require File.join("lockdown", "database")
require File.join("lockdown", "rules")
require File.join("lockdown", "system")

require File.join("lockdown", "references")

module Lockdown
  extend Lockdown::References
  extend Lockdown::Helper

  # current version is 1.3.0
  VERSION = '1.3.1'

  # Returns the version string for the library.
  def self.version
    VERSION
  end

  def self.major_version
    version.split('.')[0].to_i
  end

  def self.minor_version
    version.split('.')[1].to_i
  end

  def self.patch_version
    version.split('.')[2].to_i
  end

  # Mixin Lockdown code to the appropriate framework and ORM
  def self.mixin
    if mixin_resource?("frameworks")
      unless mixin_resource?("orms")
        raise NotImplementedError, "ORM unknown to Lockdown!"
      end

      if File.exists?(Lockdown.init_file)
        puts "=> Requiring Lockdown rules engine: #{Lockdown.init_file} \n"
        require Lockdown.init_file
      else
        puts "=> Note:: Lockdown couldn't find init file: #{Lockdown.init_file}\n"
      end
    else
      puts "=> Note:: Lockdown cannot determine framework and therefore is not active.\n"
    end
  end # mixin

  private

  def self.mixin_resource?(str)
    wildcard_path = File.join( File.dirname(__FILE__), 'lockdown', str , '*.rb' ) 
    Dir[wildcard_path].each do |f|
      require f
      module_name = File.basename(f).split(".")[0]
      module_class = eval("Lockdown::#{str.capitalize}::#{Lockdown.camelize(module_name)}")
      if module_class.use_me?
        include module_class
        return true
      end
    end
    false
  end # mixin_resource?
end # Lockdown

puts "=> Mixing in Lockdown version: #{Lockdown.version} \n"
Lockdown.mixin


