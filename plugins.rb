require 'gem_paths'

class MyCommand < Bundler::Plugin::API
  # Register this class as a handler for the `my_command` command
  command "my_command"

  # The exec method will be called with the `command` and the `args`.
  # This is where you should handle all logic and functionality
  def exec(command, args)
    puts "You called " + command + " with args: " + args.inspect
  end
end
