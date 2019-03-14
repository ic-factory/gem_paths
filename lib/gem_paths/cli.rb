require 'thor'
require 'gem_paths'

module GemPaths
  class CLI < Thor

    desc "list", "List path of each gem"
    option :format, :type => :string, :banner => 'yaml|json|make', :default => "make", :desc => 'Specify the output format'
    def list
      defaults = {"format" => "make"}
      opt = defaults.merge(options)
      begin
        case opt['format']
        when 'yaml'
          say GemPaths::List.to_yaml
        when 'json'
          puts GemPaths::List.to_json
        when 'make'
          puts GemPaths::List.to_make
        else
          shell.error set_color("Invalid value for --format option. Try 'gempaths help list' for more info.", Thor::Shell::Color::RED)
          exit(2)
        end
      rescue
        shell.error set_color("Unexpected error occurred. Please make sure you have a Gemfile.lock file in your project.", Thor::Shell::Color::RED)
        exit(3)
      end
    end

  end
end
