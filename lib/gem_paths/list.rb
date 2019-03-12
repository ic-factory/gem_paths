module GemPaths
  class List


    def self.gem_name_path_map
      Bundler.load.specs.sort_by(&:name).map { |s|
          [
            s.name,
            s.full_gem_path,
          ]
      }
    end
    private_class_method :gem_name_path_map


    def self.to_make
      gem_name_path_map.map { |pair| "gempath(#{pair[0]}) := #{pair[1]}" }
    end
  end

end
