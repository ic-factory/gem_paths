module GemPaths
  class List


    def self.gem_name_path_map
      Bundler.load.specs.sort_by(&:name).map { |s|
          [s.name, s.full_gem_path]
      }
    end
    private_class_method :gem_name_path_map


    def self.to_make
      gem_name_path_map.map { |pair| "export gem-path-#{pair[0]} := #{pair[1]}" }
    end

    def self.to_yaml
      str =  "---\n"
      str <<  "gem:\n"
      str << "  path:\n"
      str << gem_name_path_map.map { |pair| "    #{pair[0]}: #{pair[1]}" }.join("\n")
    end

    def self.to_json
      require 'json'
      JSON.pretty_generate(Hash[*gem_name_path_map.flatten])
    end

  end

end
