require 'gem_paths/list'

module GemPaths
  module Plugin

    class << self
      # Registers the plugin and adds all needed hooks
      # Will call troubleshoot via the `after-install` hook if the install does not succeed
      def register
        return if defined?(@registered) && @registered
        @registered = true

        Bundler::Plugin.add_hook('after-install-all') do |spec_install|
          puts "Installation has finished. These are the paths to your gems:"
          puts GemPaths::List.to_make
          puts ""
        end
      end

    end
  end
end
