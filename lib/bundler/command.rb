require 'gem_paths/list'
require 'fileutils'

module Bundler
  class Command
    Plugin::API.command('gem_paths', self)

    def exec(command_name, args)
      gem_paths_make_file = (Bundler::SharedHelpers.root + '.bundle' + 'gem_paths.make')
      puts "Updating #{gem_paths_make_file} ..."
      FileUtils.mkdir_p gem_paths_make_file.dirname unless File.directory?(gem_paths_make_file.dirname)
      File.write(gem_paths_make_file, GemPaths::List.to_make.join("\n") + "\n")
    end
  end
end
