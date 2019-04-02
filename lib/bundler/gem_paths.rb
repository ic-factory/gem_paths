module Bundler
  module GemPaths
    class Command
      Plugin::API.command('gem_paths', self)

      def exec(command_name, args)
        puts "You called " + command_name + " with args: " + args.inspect
      end
    end
  end
end
