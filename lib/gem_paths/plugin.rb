require 'gem_paths/list'
require 'fileutils'

module GemPaths
  module Plugin

    class << self
      # Registers the plugin and adds all needed hooks
      # Will call troubleshoot via the `after-install` hook if the install does not succeed
      def register
        return if defined?(@registered) && @registered
        @registered = true
        Bundler::Plugin.add_hook('after-install-all') do |spec_install|
          gem_paths_make_file = (Bundler::SharedHelpers.root + '.bundle' + 'gem_paths.make')
          puts "Updating #{gem_paths_make_file} ..."
          FileUtils.mkdir_p gem_paths_make_file.dirname unless File.directory?(gem_paths_make_file.dirname)
          File.write(gem_paths_make_file, GemPaths::List.to_make.join("\n") + "\n")
        end
      end

    end
  end
end
