module Bundler
  class Command
    Plugin::API.command('gem_paths', self)

    def exec(command_name, args)
      puts "You called " + command_name
    end
  end
end
