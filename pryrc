require 'rubygems'
require '~/.irb/irb/ruby18.rb' if Gem::Version.new(RUBY_VERSION) < Gem::Version.new("1.9")
require '~/.irb/irb/gem_loader'
require '~/.irb/irb/pry_loader'
require '~/.irb/irb/custom' if File.exists?("#{Dir.home}/.irb/irb/custom.rb")
require '~/.irb/irb/awesome_print_loader'
require '~/.irb/irb/rspec_console'
require '~/.irb/irb/cucumber_console'
require '~/.irb/irb/rails_colors'
require '~/.irb/irb/rails_commands'
if defined?(PryDebugger)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

AwesomePrint.pry!
