require 'thor'
require 'gem_paths'

module GemPaths
  class CLI < Thor

    desc "list", "List path of each gem"
#    option :format, :type => :string, :banner => 'text|make', :desc => 'Specify the output format'
    def list
      puts GemPaths::List.to_make
    end

  end
end
